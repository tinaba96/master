function progress_bar(m,s)
%progress_bar(m,s)
%Prints a progress bar on the screen.  Call initially PROGRESS_BAR(M,S)
% for M iterations, and a bar width of S characters.  Then call
% PROGESS_BAR without arguements inside the FOR loop.  Example:
%
% progress_bar(N*M,20)
% for ii = 1:N
%   for jj = 1:M
%     progress_bar;
%		...
%   end
% end

%TESTING:
%M = 300;disp(datestr(now));progress_bar(M,30);for ii = 1:M;progress_bar;pause(0.01);end;disp(datestr(now))

global progress_bar_MAX
global progress_bar_COUNT
global progress_bar_SIZE
global progress_bar_START

if nargin > 0
	if nargin  == 1
		s = 50;
	end
	progress_bar_SIZE = s;

	if progress_bar_SIZE < 28
		fprintf('|');
		for ii = 1:progress_bar_SIZE; fprintf(' ');end
		fprintf('|\n');
	end
	progress_bar_MAX = m;
	progress_bar_COUNT = 0;
	progress_bar_START = now;
else
	zm  = round(progress_bar_MAX / progress_bar_SIZE);
	if progress_bar_COUNT == 0
		if progress_bar_SIZE >= 28
		fprintf('|');
		else
			fprintf('---');
		end
	elseif progress_bar_COUNT == zm
		n = now;
		d = n - progress_bar_START;
		f = progress_bar_START + (d)*progress_bar_SIZE;

		if progress_bar_SIZE >= 28
			x = ' ';
			x = repmat(x,1,progress_bar_SIZE-27);
			fprintf('finish:%s%s|\n|..',datestr(f),x);
		else
			fprintf('finish:%s---\n|..',datestr(f));
		end
		
	elseif mod(progress_bar_COUNT, zm) == 0
		fprintf('.');
	end

	progress_bar_COUNT = progress_bar_COUNT + 1;

	if progress_bar_COUNT == progress_bar_MAX
		fprintf('|\n');
	end
end