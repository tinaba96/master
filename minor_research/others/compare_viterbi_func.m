clear

trellis = poly2trellis(3, {'1+x+x^2', '1+x^2'})

%x = ones(100,1);
%data = randi([0 1],10,1);
%data

%code = [1,-1,-1,-1,-1,1,1,-1,1,-1,1,-1,-1,-1,-1,1,1,-1,1,-1]
code = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];


%code = convenc(data,trellis);
%code
code_noise = awgn(code, 10);

%code = convenc(ones(100,1),trellis);
tb = 2;
decoded = vitdec(code,trellis,tb,'trunc','unquant');
%decoded
%isequal(decoded, data)

code = convenc(decoded,trellis)



N = 10;

S = zeros(4, N+3);
S(2:4, 1) = Inf;

%tb = zeros(4, 0)
tb1 = {};
tb2 = {};
tb3 = {};
tb4 = {};

tb_new1 = {};
tb_new2 = {};
tb_new3 = {};
tb_new4 = {};



for t = 2:11
    
    A = code([2*t-3, 2*t-2]);
        

    g00 = (code_noise(1)+1)^2 + (code_noise(2)+1)^2;
    g01 = (code_noise(1)+1)^2 + (code_noise(2)-1)^2;
    g10 = (code_noise(1)-1)^2 + (code_noise(2)+1)^2;
    g11 = (code_noise(1)-1)^2 + (code_noise(2)-1)^2;
   
    [S(1,t), c] = min([S(1,t-1)+g00, S(3,t-1)+g11]);
    if(c==1)
        tb_new1 = [tb1 1 1];
    else
        tb_new1 = [tb3 0 0];
    end
    [S(2,t), c] = min([S(1,t-1)+g11, S(3,t-1)+g00]);
    if(c==1)
        tb_new2 = [tb1 0 0];
    else
        tb_new2 = [tb3 1 1];
    end
    [S(3,t), c] = min([S(2,t-1)+g10, S(4,t-1)+g01]);
    if(c==1)
        tb_new3 = [tb1 0 1];
    else
        tb_new3 = [tb3 1 0];
    end
    [S(4,t), c] = min([S(2,t-1)+g00, S(4,t-1)+g10]);
    if(c==1)
        tb_new4 = [tb1 1 0];
    else
        tb_new4 = [tb3 0 0];
    end
    
    tb1 = tb_new1;
    tb2 = tb_new2;
    tb3 = tb_new3;
    tb4 = tb_new4;
           
end


[S(1, N+2), c] = min([S(1,N+1), S(3,N+1)]);
if(c==1)
    tb_new1 = [tb1];
else
    tb_new1 = [tb3];
end
[S(3, N+2), c] = min([S(2,N+1), S(4,N+1)]);
if(c==1)
    tb_new3 = [tb2];
else
    tb_new3 = [tb4];
end
[S(1, N+3), c] = min([S(1,N+2), S(3,N+2)]);
if(c==1)
    tb_new1 = [tb1];
else
    tb_new1 = [tb3];
end
out = tb_new1 ;
output = cell2mat(out)

