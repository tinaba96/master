function [sys,curve] = QdeConvergence(varargin)
% [sys,curve] = QdeConvergence
%
% Determines whether or not convergence occurs for quantized density
% evolution of regular LDPC codes for a fixed channel.
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

% Equation numbers refer to the paper:
%
% B. M. Kurkoski and H. Yagi, "Quantization of binary-input discrete
% memoryless channels, with applications to LDPC decoding."
% Available http://arxiv.org/abs/1107.5637.

[sys,curve,start_time] = curveInit(varargin,nargout,mfilename);

[curve,dc]       = curveParam(curve,'dc',6);
[curve,dv]       = curveParam(curve,'dv',3);
[curve,K]        = curveParam(curve,'K',3);     %K levels/message
[curve,itermax]  = curveParam(curve,'itermax',100);
curve.R          = 1 - dv/dc;

usebsc = false; %generally, use the quantized AWGN mode
if ~usebsc
    [curve,var]      = curveParam(curve,'var',0.55);
    curve.ebnodb     = var2ebnodb(var,curve.R);
    [curve,Kch]      = curveParam(curve,'Kch',4);   %AWGN quantized to Kch levels
else
    [curve,p]        = curveParam(curve,'p',0.13);
end


%Quantization is applied internally at a node if number of levels exceeds MAXLEVEL
[curve,MAXLEVEL] = curveParam(curve,'MAXLEVEL',2^10);

useC = true;    %Use faster C (MEX) version of Quant(); otherwise Matlab version

if ~usebsc      %quantized AWGN mode
    P = BiAwgn2Dmc(var,1001);
    P(find(P < eps)) = 10*eps;  %numerical stability
    
    Q = QuantMiDmc(P,Kch);      %quantize to Kch levels
    r0 = P*Q';                  %r0 is the channel DMC; eqn (20)
    curve.r0 = r0;
    
    Q_init = QuantMiDmc(P,K);
    r0_init = P*Q_init';        %quantize to K levels, first iteration only
else            %BSC mode
    r0 = [1-p p; p 1-p];
    r0_init = r0;
end

[~,ind] = sort(r0(1,:) ./ r0(2,:));
r0 = r0(:,ind);

[~,ind] = sort(r0_init(1,:) ./ r0_init(2,:));
r0_init = r0_init(:,ind);

fprintf('--- dv=%d  dc=%d  K=%d  Kch=%d  MAXLEVEL=%d  var=%g --- \n',dv,dc,K,Kch,MAXLEVEL,var);

r{1} = r0_init;
ell = 2;
c = 1;


progress_bar(itermax);
while (c)
    progress_bar;
    
    %CHECK NODE
    ltilde{ell} = crossProductCheck(dc,r{ell-1},MAXLEVEL,useC);%eqn (29)
    if useC
        Qcheck{ell} = QuantMiDmc(ltilde{ell},K);	    %eqn (31)
    else
        Qcheck{ell} = QuantMiDmcMulti(ltilde{ell},K);	%eqn (31)
    end
    l{ell} = ltilde{ell} * Qcheck{ell}';                %eqn (33)
    
    
    %VARIABLE NODE
    rtilde{ell} = crossProductVar(dv,l{ell},r0,MAXLEVEL,useC);% eqn (30)
    
    if useC
        [Qvar{ell},mi] = QuantMiDmc(rtilde{ell},K);     %eqn (32)
    else
        [Qvar{ell},mi] = QuantMiDmcMulti(rtilde{ell},K);%eqn (32)
    end
    r{ell} = rtilde{ell} * Qvar{ell}';                  %eqn (34)
    
    %Convergence check
    miell(ell) = mi;
    if mi > 0.999
        c = 0;
        fprintf('\n');
    end
    ell = ell + 1;
    if ell > itermax;
        progress_bar;
        fprintf('no convergence\n');
        break;
    end
end

curve.check = c;
curve.mi = mi;



%The following implements eqn (29).  The for loop applied each edge one
%at a time.  If the size grows beyond MAXLEVEL, then the quantization
%algorithm is applied as an intermediate step.

function ltilde = crossProductCheck(dc,r,MAXLEVEL,useC)

CS = [1 0 0 1 ; 0 1 1 0] * 0.5;

t = r;
for ii = 1:dc-2
    Kr = size(r,2);
    Kt = size(t,2);
    if  Kr * Kt > MAXLEVEL
        [~,ind] = sort( t(1,:) ./ t(2,:) );
        t = t(:,ind);
        if useC
            Qt = QuantMiDmc(t,floor(MAXLEVEL/Kr) );
        else
            Qt = QuantMiDmcMulti(t,floor(MAXLEVEL/Kr) );
            Qt = Qt{1};
        end
        t = t * Qt';
    end
    
    t = kron(t,r);
    t = CS * t;
end
[~,ind] = sort( t(1,:) ./ t(2,:) );

ltilde = t(:,ind);


%The following implements eqn (30).  The for loop applied each edge one
%at a time.  If the size grows beyond MAXLEVEL, then the quantization
%algorithm is applied as an intermediate step.

function rtilde = crossProductVar(dv,l,r0,MAXLEVEL,useC);

t1 = r0(1,:);
t2 = r0(2,:);
for ii = 1:dv-1
    Kl = size(l,2);
    Kt = size(t1,2);
    if  Kl * Kt > MAXLEVEL
        t = [t1 ; t2];
        t = 2 * t / sum(sum(t));                        %normalize
        [~,ind] = sort( t(1,:) ./ t(2,:) );
        t = t(:,ind);
        if useC
            Qt = QuantMiDmc(t,floor(MAXLEVEL/Kl) );
        else
            Qt = QuantMiDmcMulti(t,floor(MAXLEVEL/Kl) );
        end
        t = t * Qt';
        t1 = t(1,:);
        t2 = t(2,:);
    end
    
    t1 = kron(t1,l(1,:));
    t2 = kron(t2,l(2,:));
end
t = [t1 ; t2];
t = 2 * t / sum(sum(t));                                %normalize
[~,ind] = sort( t(1,:) ./ t(2,:) );
rtilde = t(:,ind);



function ebnodb = var2ebnodb(var,R)
% ebnodb = var2ebnodb(var,R)
%
% Compute the E_b/N_0 for a given noise variance,
% assuming E_s = 1 and N_0 / 2 = var.
%

ebno = 1 ./ (2 * var * R);
ebnodb = 10*log10(ebno);
