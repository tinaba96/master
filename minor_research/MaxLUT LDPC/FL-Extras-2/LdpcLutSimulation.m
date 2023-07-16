function [sys,curve] = LdpcLutSimulation(varargin)
% [SYS,CURVE] = SKELETON_SYSTEM(SYS,CURVE)
%
%  This LUT_CW_SIMU is like the older LUT_SIMU because it uses the old
%   lookup tables which were giving good results, but it transmits arbitrary
%    codewords.
%
%  Brian Kurkoski
%


%Here's how to make a code:
%j = 4;
%n = 1000;
%H.H = makeldpc(3,j,n)
%[H.row,H.col] = H_to_rowcolindex(H.H);
%save H1000 H

[sys,curve,start_time] = curveInit(varargin,nargout,mfilename);

%Load LUT Tables
[curve,filename]  = curveParam(curve,'filename','testLuts');
H                 = load(filename);
LUT               = H.LUT;
ellmax            = size(LUT.CheckNode,2);

%[curve,codeflnm]        = curveParam(curve,'codeflnm','H16_4P.mat');
[curve,codeflnm] = curveParam(curve,'codeflnm','H1000P.mat');
codeflnm = PathToCodeflnm(codeflnm);

%codeflnm         = [homepath 'bpwb/matlab/codes/' codeflnm];
X = load(codeflnm);

code = X.H;
[m n] = size(code.H);
code = CodeEdgeIndex(code);
row = code.row;
col = code.col;
row_ex = code.row_ex;
col_ex = code.col_ex;
Ne = code.Ne;
m = code.m;
n = code.n;
k = n-m;
dc = code.dc;
dv = code.dv;


[curve,usebsc]   = curveParam(curve,'usebsc',true);%false means quantized AWGN mode
%Get Channel params after we know the code rate
if ~usebsc
    [curve,var]      = curveParam(curve,'var',0.55);
    curve.ebnodb     = var2ebnodb(var,curve.R);
    [curve,Kch]      = curveParam(curve,'Kch',4);   %AWGN quantized to Kch levels
    %    fprintf('--- dv=%d  dc=%d  K=%d  Kch=%d  MAXLEVEL=%d  var=%g --- \n',dv,dc,K,Kch,MAXLEVEL,var);
else
    [curve,p]        = curveParam(curve,'p',0.13);
    %    fprintf('--- dv=%d  dc=%d  K=%d  Kcheck=%d Kvar=%d  --- \n',dv,dc,K,Kcheck,Kvar);
end

%typical CONTINUE initialization
[curve,itermax]   = curveParam(curve,'itermax',50);

curve  = curveParam(curve,'nbits',0);
curve  = curveParam(curve,'blocks',0);
curve  = curveParam(curve,'nbiterr',0);
curve  = curveParam(curve,'nworderr',0);
curve  = curveParam(curve,'lasterr_randnstate',{});
curve  = curveParam(curve,'lasterr_randstate',{});

curve  = curveParam(curve,'errorlim',20);
curve  = curveParam(curve,'continue','curve.nworderr < curve.errorlim');
%curve  = curveParam(curve,'continue','curve.blocks < curve.errorlim');

while (errorlim(curve,start_time))
    %save randnstate at the beginning of the simulation.
    curve.randnstate = randn('state');
    curve.randstate = rand('state');
    
    %ENCODER AND CHANNEL
    data = (rand(1,k) < 0.5) + 0;  %+0 converts from logical
    %data = [1 0 0 0];
    x = [data , mod(data * code.P,2)];
    %x = zeros(size(x));
    x_off = x + 1;       % +1 to match indexing scheme
    z = (rand(1,n) < p) + 0;
    %z = zeros(size(z));
    %z(1) = 1;
    y = xor(x,z) + 1;    % +1 to match indexing scheme
    
    %DECODER
    
    %initial var-to-check message
    Q = zeros(1,Ne);
    for ii = 1:n
        Q(col{ii}) = y(ii);
    end
    R = zeros(1,Ne);
    xhat = zeros(1,n);
    
    for iter = 1:itermax
        ell = min(iter,ellmax); %continue to use last LUT if iter > ellmax
        
        %check node
        for ii = 1:m
            for jj = 1:dc
                r = row_ex{ii,jj};
                t = Q(r(1));
                for kk = 2:dc-1
                    t = LUT.CheckNode{kk-1,ell}(t,Q(r(kk)));
                end
                R(row{ii}(jj)) = t; %memaddr currently being WRITTEN to
            end
        end
        
        %var node
        for ii = 1:n
            for jj = 1:dv
                c = col_ex{ii,jj};
                t = y(ii);
                for kk = 1:dv-1
                    t = LUT.VarNode{kk,ell}(t,R(c(kk)));
                end
                Q(col{ii}(jj)) = t;
            end
        end
        
        %hard decisions
        for ii = 1:n
            c = col{ii};
            t = y(ii);
            for kk = 1:dv-2
                t = LUT.VarNode{kk,ell}(t,R(c(kk)));
            end
            t = LUT.HardDecision{1,ell}(t,R(c(dv-1)));
            xhat(ii) = LUT.HardDecision{2,ell}(t,R(c(dv)));
        end
        
        ne = length(find(xhat~=x_off));
        if ne == 0
            break;
        end
        
    end
    
    
    curve.nbits  = curve.nbits + n;
    curve.blocks = curve.blocks + 1;
    curve.nbiterr = curve.nbiterr + ne;
    curve.nworderr = curve.nworderr + (ne > 0);
    if ne > 0
        fprintf('X');
        curve.lasterr_randnstate{end+1} = curve.randnstate;
        curve.lasterr_randstate{end+1} = curve.randstate;
    else
        %fprintf('.');
    end
end

fprintf('\n');

%convenience calculations
curve.ber = curve.nbiterr / curve.nbits;
curve.wer = curve.nworderr / curve.blocks;


curve.randnstate = randn('state');
curve.randstate = rand('state');
curve.etime = curve.etime + etime(clock,start_time);

return
%keyboard





function codeflnm = PathToCodeflnm(codeflnm)

%if codeflnm contains / or \, it is an absolute path, do nothing
if length(regexp(codeflnm,'[/\\]')) == 0
    aFile = 'QuantMiDmcMulti.m';
    newPath = which(aFile);
    if length(newPath) == 0
        error(sprintf('Could not find %s in the search path\nAdd QuantDmc to the search path',upper(aFile)));
    end
    
    if (length(codeflnm) > 3 && ~strcmp( codeflnm(end-3:end),'.mat')) || length(codeflnm) <= 3
        codeflnm = [codeflnm , '.mat'];
    end
    
    absolutePath = strrep(newPath,aFile,'');
    
    if exist([absolutePath , 'codes/' codeflnm],'file')
        codeflnm = [absolutePath , 'codes/' codeflnm];
    elseif exist(codeflnm,'file')
        codeflnm = codeflnm;
    else
        error(sprintf('Could not find code file %s',upper(codeflnm)));
    end
    
end



