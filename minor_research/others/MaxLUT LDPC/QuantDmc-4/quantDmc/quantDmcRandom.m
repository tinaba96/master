function [Q,IXZ] = QuantDmcRandom(pygx,K,px)
%random  Random quantization of a discrete memoryless channel.
%
%   pygx is an J-by-M matrix with each row sum to one
%
%   Q is an M-by-K quantization matrix such that the conditional distribution 
%   on the quantizer output Z Pr(Z=z|X=x) = Pr(Y=x|X=x) * Q(y,z) is given by
%      PZGX = PYGX * Q
%
%   IXZ is the mutual information I(X;Z).
%
% Alan Zhang and Brian Kurkoski
% Distributed under an MIT-like license; see the file LICENSE
%

% Calculate Pr(X|Y)
J    = size(pygx,1); % number of inputs
M    = size(pygx,2); % number of outputs

if nargin < 3
    px = ones(1,J)/J;
end

pxy  = repmat(px(:),1,M) .* pygx;
py   = sum(pxy,1);
pxgy = pxy' ./ repmat(py(:)',J,1)'; % now pxgy is a M-by-J matrix with each row sum to one

rndqt = randi(K,1,M);
for i = 1:K
    Q(:,i) = rndqt==i; % generate random clusters
end

Q = Q + 0.0;

%compute mutual information    
pzgx = pygx*Q;
pxz  = repmat(px(:),1,K) .* pzgx;
IXZ  = joint2MI(pxz);

