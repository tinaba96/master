t = poly2trellis([4 3],[4 5 17;7 4 2]);

x = ones(100,1);
code = convenc(x,t)

t = poly2trellis([4 3],[4 5 17;7 4 2]);

code = convenc(ones(100,1),t);

tb = 2;
decoded = vitdec(code,t,tb,'trunc','hard');

isequal(decoded,ones(100,1))