function c=errorlim(curve,start_time)
%  C = ERRORLIM(CURVE)
%
%  If CURVE.CONTINUE is defined, then this string
%  is evaluated and the result is returned as C.
%  If CURVE.CONTINUE is not defined, then an error is generated.
%  CURVE.CONTINUE may also be a scalar numerical value which is returned
%  as C, or an empty matrix, which returns C=1.
%
%  C = ERRORLIM(CURVE,START_TIME)
%
%  Checks to see if the elapsed time beween current time
%  and START_TIME time exceeds the limit specified by 
%  CURVE.WORKINTERVAL then a 0 is returned.  START_TIME 
%  is in the format returned by the CLOCK function. 
%  Otherwise CURVE.CONTINUE is evaluated.
%
%  Typical usage:
%  [sys,curve,start_time] = sysdef_init(varargin,nargout,mfilename);
%  while( errorlim(curve,start_time) )
%    ... run a simulation ...
%  end
%
%  Brian Kurkoski 7/2002,5/2005,11/2006
%

if (nargin > 1)
	if isfield(curve,'workinterval')
        ttt = etime(clock,start_time);
        %fprintf('elapsed time = %d, wi = %d\n',ttt,curve.workinterval);
		if ttt > curve.workinterval
			c = 0;
			fprintf('Work interval %d reached ',curve.workinterval);
			fprintf('(etime=%0.1f)\n',etime(clock,start_time));
			return
		end
	else
		warning('curve.workinterval is not defined, but time comparison was requested');
	end
end

if isfield(curve,'continue')
	%case of curve.continue is an empty array
	if length(curve.continue) == 0
		c = 1;
		return;
	end
	
	%case of curve.continue is numeric, probably 0 or 1
	if isnumeric(curve.continue) & (length(curve.continue) == 1)
		c = curve.continue;
		return;
	end

	c = eval(curve.continue,'1');
	if isempty(c)
		c = 1;
	end
    
else 
    %error('Input structure does not contain field CONTINUE');
    c = 1;
end

return;


%%%%%%%%%%%% Traditional method 

if ~isfield(curve,'errorlimtype')
	warning('curve.errorlimtype is not defined');
	c = 1;
	return;
end

if ~ischar(curve.errorlimtype)
	warning('curve.errorlimtype is not character');
	disp(curve.errorlimtype);
	c = 1;
	return;
end

x = getfield(curve,curve.errorlimtype);
if length(x) > 0
	el = x(end);
	ce = x(end) < curve.errorlim;
else
	el = Inf;
	ce = 1;
end
c = ce;




%switch curve.errorlimtype
%case {'word','words'}
%   el = curve.errorwords(end);
%   ce = curve.errorwords(end) < curve.errorlim;
%   %fprintf('EL  %s :: %d < %d?',curve.errorlimtype,...
%   %curve.errorwords,curve.errorlim);
%   
%case {'bit','bits'}
%   el = curve.errorbits(end);
%   ce = curve.errorbits(end) < curve.errorlim;
%   %fprintf('EL  %s :: %d < %d?',curve.errorlimtype,...
%   %curve.errorbits,curve.errorlim);
%   
%case {'block','blocks'}
%   el = curve.blocks(end);
%   ce = curve.blocks(end) < curve.errorlim;
%   %fprintf('EL  %s :: %d < %d?',curve.errorlimtype,...
%   %curve.blocks,curve.errorlim);
%   
%otherwise
%   error(sprintf('curve.errorlimtype = ''%s'' not valid',curve.errorlimtype))
%end


return
