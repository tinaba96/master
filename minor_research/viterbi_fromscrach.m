%A = [
%  0.1 0.7 0.2
%  0.2 0.1 0.7
%  0.7 0.2 0.1
%];

trellis = poly2trellis(3, {'1+x+x^2', '1+x^2'})



x = ones(100,1);
code = convenc(x,t);

code = convenc(ones(100,1),t);

tb = 2;
decoded = vitdec(code,t,tb,'trunc','hard');

isequal(decoded,ones(100,1))

