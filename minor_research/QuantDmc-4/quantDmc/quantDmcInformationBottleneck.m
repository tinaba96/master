function [pzgy,IXZ] = quantDmcInformationBottleneck(pygx,K,px,beta)
%function [Q,IXZ] = quantDmcInformationBottleneck(pygx,K,px)
%
% quantDmcIB - Information Bottleneck quantization of DMC
%
%   quantDmcIB[pcy_cond,mi] = ib(pxy,M,beta)
%
%   Information Bottleneck for joint distribution PXY.
%   Given a joint distribution between X and Y, it finds
%   a quantization Pr(C|Y) which minimizes:
%
%   I(X;C) - beta * I(Y;C)
%
%   Where X -> Y -> C.   The Kullback-Leiber divergence is used
%   as the distnace measure.
%
%   M is the number of levels for C.
%
%   Brian Kurkoski, 2008
%

%Pxy means Pr(X,Y) and Pxy_cond means Pr(X | Y).   X is channel input, Y is %channel output, and C is the quantized channel output.
%X -> Y -> C

if nargin < 4
    beta = 100;
end

J = size(pygx,1);

%%%%%%%%%%%%%%%%
% Calculate Pr(X|Y)
J    = size(pygx,1); % number of inputs
M    = size(pygx,2); % number of outputs
if nargin < 3
    px   = ones(1,J) / J;    %default is uniform input distribution
end
pxy  = repmat(px(:),1,M) .* pygx;
py   = sum(pxy,1);
pxgy = pxy' ./ repmat(py(:)',J,1)';
%%%%%%%%%%%%%%%%


if true
    %initial pxc is random
    pxz = rand(J,M);
else
    %initial pxz is uniform
    pxz = ones(J,K);
    pxz = pxz ./ sum(sum(pxz));
end

%initial pz is random
pz = rand(1,K);
pz = pz / sum(pz);

pxgz = pxz ./  (repmat( sum(pxz,1),J,1)+eps);
pxgy = pxy ./  (repmat( sum(pxy,1),J,1)+eps);

for t = 1:500
    %STEP 1
    pzgy = zeros(K,M);
    for yi = 1:M
        for ci = 1:K
            p = pxgy(:,yi)+eps;
            q = pxgz(:,ci)+eps;
            kl = sum(p .* log2( p ./ q));
            kli(ci,yi) = kl;
            temp(ci,yi) = exp( - beta * kl);
            pzgy(ci,yi) = pz(ci) * exp( - beta * kl);
        end
    end
    %normalize
    pzgy = pzgy ./ (repmat( sum(pzgy,1), K,1));
    
    %STEP 2
    pz = zeros(1,K);
    for ci = 1:K
        pz(ci) = sum(py .* pzgy(ci,:));
    end
    
    %STEP 3
    pxz = pxy * pzgy';
    for ci = 1:K
        pxgz(:,ci) = pxz(:,ci) / (pz(ci)+eps);
    end
    
    %fprintf('MI=%g\n',mihist(t))
    
end

IXZ = joint2MI(pxz);




