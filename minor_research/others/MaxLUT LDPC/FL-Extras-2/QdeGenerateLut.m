function [sys,curve] = QdeGenerateLut(varargin)
% [sys,curve] = QdeGenerateLut
%
% Generates lookup tables for finite-length implementation of LDPC decoding
%
% QdeConvergence(...,'dc',DC,'dv',DV,...)
%
%     Check node degree DC (default 6), variable node degree DV (default 3)
%
% QdeConvergence(...,'K',K,...)
%
%      K levels per LDPC message (log2(K) bits per message), default 3
%
% QdeConvergence(...,'var',VAR,'Kch',Kch,...)
%
%      Default channel: Use a DMC created from a BIAWGN with noise
%      variance VAR, quantized to Kch levels (log2(Kch) bits).
%
% QdeConvergence(...,'usebsc',true,'p',P,...)
%
%      Use a binary symmetic channel with error probability P
%
% QdeConvergence(...,'itermax',ITERMAX,...)
%
%      Maximum ITERMAX iterations (default 100)
%
%
% [SYS,CURVE] = QdeConvergence
%
%      SYS and CURVE contain various parameters.
%
%      CURVE.C = 0 if convergence occurred, and CURVE.1 = 1 if convergence
%      did not occur.
%
%
% QuantDMC is (c) 2010-2012 Brian Kurkoski
% Distributed under an MIT-like license; see the file LICENSE
%


[sys,curve,start_time] = curveInit(varargin,nargout,mfilename);

[curve,dc]       = curveParam(curve,'dc',4);
[curve,dv]       = curveParam(curve,'dv',3);
[curve,K]        = curveParam(curve,'K',4);     %K levels/message
[curve,Kcheck]   = curveParam(curve,'Kcheck',4);%internal quant. at check node
[curve,Kvar]     = curveParam(curve,'Kvar',16);  %internal quant. at var node
[curve,itermax]  = curveParam(curve,'itermax',25);
curve.R          = 1 - dv/dc;

[curve,filename]       = curveParam(curve,'filename','testLuts');


[curve,usebsc]   = curveParam(curve,'usebsc',true);%false means quantized AWGN mode

if ~usebsc
    [curve,var]      = curveParam(curve,'var',0.55);
    curve.ebnodb     = var2ebnodb(var,curve.R);
    [curve,Kch]      = curveParam(curve,'Kch',4);   %AWGN quantized to Kch levels
    fprintf('--- dv=%d  dc=%d  K=%d  Kch=%d  MAXLEVEL=%d  var=%g --- \n',dv,dc,K,Kch,MAXLEVEL,var);
else
    [curve,p]        = curveParam(curve,'p',0.13);
    fprintf('--- dv=%d  dc=%d  K=%d  Kcheck=%d Kvar=%d  --- \n',dv,dc,K,Kcheck,Kvar);
end


%Quantization is applied internally at a node if number of levels exceeds MAXLEVEL
[curve,MAXLEVEL] = curveParam(curve,'MAXLEVEL',2^10);

useC = true;    %Use faster C (MEX) version of Quant(); otherwise Matlab version

if ~usebsc      %quantized AWGN mode
    P = BiAwgn2Dmc(var,1001);
    P(find(P < eps)) = 10*eps;  %numerical stability
    
    Q = QuantMiDmc(P,Kch);      %quantize to Kch levels
    r0 = P*Q';                  %r0 is the channel DMC; 
    curve.r0 = r0;
    
    Q_init = QuantMiDmc(P,K);
    r0_init = P*Q_init';        %quantize to K levels, first iteration only
else            %BSC mode
    r0 = [1-p p; p 1-p];
    %r0 = ChannelSort(r0);
    %r0 = [p 1-p; 1-p p];
end

r{1} = r0;
ell = 2;
c = 1;

LUT.CheckNode    = cell(dc-2,itermax+1);
LUT.VarNode      = cell(dv-1,itermax+1);
LUT.HardDecision = cell(2,itermax+1);

LUT.usebsc = usebsc
if ~usebsc
    LUT.var = var;
    LUT.ebnodb = curve.ebnodb;
    LUT.Kch = Kch
else
    LUT.p = p;
end





progress_bar(itermax);
for ell = 2:itermax+1
    progress_bar;
    
    %CHECK NODE
    CS = [1 0 0 1 ; 0 1 1 0] * 0.5;
    t = r{ell-1};
    for ii = 1:dc-2
        ttilde = CS * kron(t,r{ell-1});
        Kr = size(r{ell-1},2);
        Kt = size(t,2);
        [ttilde,inputPairs] = kronPreLabel(ttilde,Kt,Kr);

        if ii < dv-2
            Qs = QuantMiDmcMulti(ttilde,Kcheck);    %internal: use Kcheck
        else
            if ell == 2
                Qs = QuantMiDmcMulti(ttilde,2);     %last edge, not internal, use K
            else
                Qs = QuantMiDmcMulti(ttilde,K);     %last edge, not internal, use K
            end
        end
        LUT.CheckNode{ii,ell} = Quant2Lut(Qs{1},inputPairs,Kt,Kr);
        t = ttilde * Qs{1}';
    end
    
    
    %l{ell} = ChannelSort(t);
    l{ell} = t;
    
    %VARIABLE NODE
    t1 = r0(1,:);
    t2 = r0(2,:);
    t  = r0;
    VS = [1 0 0 0 ; 0 0 0 1];
    for ii = 1:dv-1
        Kl = size(l{ell},2);
        Kt = size(t1,2);
        
        test = VS * kron(t,l{ell});
        t1 = kron(t1,l{ell}(1,:));
        t2 = kron(t2,l{ell}(2,:));
        ttilde = [t1 ; t2];
        
        if max( abs( test(:) - ttilde(:))) > 0
            error('not so perfect');
        end
        
        if ii < dv-1
            [ttilde,inputPairs] = kronPreLabel(ttilde,Kt,Kl);
            Qt = QuantMiDmcMulti(ttilde,Kvar);           %internal: use Kvar
            LUT.VarNode{ii,ell} = Quant2Lut(Qt{1},inputPairs,Kt,Kl);
            t = ttilde * Qt{1}';
        else
            [ttilde,inputPairs] = kronPreLabel(ttilde,Kt,Kl);
            [Qt,mi] = QuantMiDmcMulti(ttilde,K);              %last: use K
            LUT.VarNode{ii,ell} = Quant2Lut(Qt{1},inputPairs,Kt,Kl);
            t = ttilde * Qt{1}';
            %This normalization is needed for numerical stability as MI->1
            t(1,:) = t(1,:) / sum(t(1,:));
            t(2,:) = t(2,:) / sum(t(2,:));
            
            
            %Generate Hard Decision tables
            [ttilde,inputPairs] = kronPreLabel(ttilde,Kt,Kl);
            Qt = QuantMiDmcMulti(ttilde,Kvar);
            LUT.HardDecision{1,ell} = Quant2Lut(Qt{1},inputPairs,Kt,Kl);
            s = ttilde * Qt{1}';
            Ks = size(s,2);
            s1 = kron(s(1,:),l{ell}(1,:));
            s2 = kron(s(2,:),l{ell}(2,:));
            stilde = [s1 ; s2];
            
            test = VS * kron(s,l{ell});
            if max( abs( test(:) - stilde(:))) > 0
                error('not so perfect');
            end
            [stilde,inputPairs] = kronPreLabel(stilde,Ks,Kl);
            Qt = QuantMiDmcMulti(stilde,2);
            LUT.HardDecision{2,ell} = Quant2Lut(Qt{1},inputPairs,Ks,Kl);
            s = stilde * Qt{1}';
            
            %modify LUT.HardDecision Table
            ind(1) = find(s(1,:) == max(s(1,:))); %ML Decision for X=1
            ind(2) = find(s(2,:) == max(s(2,:))); %ML Decision for X=2
            pos{1} = find(LUT.HardDecision{2,ell} == ind(1));
            pos{2} = find(LUT.HardDecision{2,ell} == ind(2));
            LUT.HardDecision{2,ell}(pos{1}) = 1;
            LUT.HardDecision{2,ell}(pos{2}) = 2;
        end
        
        t1 = t(1,:);
        t2 = t(2,:);
        
        
    end
    r{ell} = t;

    if mi > 0.999
        fprintf('\n');
        break;
    end
end

%because of 0/1 indexing problem, 1 index is actually empty -- drop it
LUT.CheckNode    = LUT.CheckNode(:,2:ell);
LUT.VarNode      = LUT.VarNode(:,2:ell);
LUT.HardDecision = LUT.HardDecision(:,2:ell);


curve.LUT.CheckNode = LUT.CheckNode;
curve.LUT.VarNode = LUT.VarNode;
curve.LUT.HardDecision = LUT.HardDecision;
curve.r0 = r0;

LUT.dc = dc;
LUT.dv = dv;
LUT.r0 = r0;
LUT.ellmax = ell-1;
LUT.LastMi = mi;

save(filename,'LUT');

function [Pout,inputPairs] = kronPreLabel(Pin,Kt,Kr)

if Kt*Kr ~= size(Pin,2)
    error('Q does not agree with Kt*Kr');
end

%Permute Pin so that the LLRs are in increasing order
LLR = log( Pin(1,:) ./ Pin(2,:) );
[~,sortorder] = sort(LLR);

%generate the order that agrees with kron(t,r)
c = 1;
pair = zeros(Kt*Kr,2);
for ii = 1:Kt
    for jj = 1:Kr
        pair(c,:) = [ii jj];
        c = c + 1;
    end
end
Pout = Pin(:,sortorder);
inputPairs = pair(sortorder,:);

function LUT = Quant2Lut(Q,inputPairs,Kt,Kr)

if size(Q,2) ~= size(inputPairs,1)
    error('Q does not agree with INPUTPAIRS');
end

LUT = zeros(Kt,Kr);
for ii = 1:size(inputPairs,1)
    p = inputPairs(ii,:);
    LUT(p(1),p(2)) = find(Q(:,ii) == 1);
end

