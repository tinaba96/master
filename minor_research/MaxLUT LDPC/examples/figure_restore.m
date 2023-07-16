% FIGURE_RESTORE(fignumber)
%
%  Reads the file called fignn, where nn is given by the fig argument.
%  Then the position in that file is applied to the current figure.
%  If fignumber is not given, then current figure is used.
%  If filename fignn.mat does not exist, then a warning is generated.
%
%  See also GCFPOSSAVE

function gcfposrestore(fignumber)

if(nargin == 0)
    fignumber = gcf;
end
fignumber = fignumber.Number;

flnm = strcat('.fig',num2str(fignumber),'.mat');

if ~exist(flnm,'file');
    return; %quietly return;
end

x=fopen(flnm,'r');
if( x ~= -1 )
    fclose(x);
    load(flnm);
    set(fignumber,'Position',FigPosition);
    if exist('AxesPosition','var')
        eval(AxesPosition);
    end
else
    msg=strcat('File fig',num2str(fignumber),'.mat does not exist');
    warning(msg);
end



