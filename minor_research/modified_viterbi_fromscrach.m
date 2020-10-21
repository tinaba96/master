code = [1,0,0,1,0,1,1,0,1,0]

N = 10

S = zeros(4, N+2)
S(2:4, 1) = Inf

tb = zeros(4, N)

for t = 2:N

    %A = [-1, 1]
    
    A = code([2*t-1, 2*t]);
    
    
    
    awgn = awgn(A, 0.66)

    g00 = (awgn(1)+1)^2 + (awgn(2)+1)^2
    g01 = (awgn(1)+1)^2 + (awgn(2)-1)^2
    g10 = (awgn(1)-1)^2 + (awgn(2)+1)^2
    g11 = (awgn(1)-1)^2 + (awgn(2)-1)^2
    
    
    
    [S(1,t), c] = min([S(1,t-1)+g00, S(3,t-1)+g11])
    if(c==1)
        tb_new(1,:) = [tb(1,:) 11];
    else
        tb_new(1,:) = [tb(3,:) 00]
    end
    [S(2,t), c] = min([S(1,t-1)+g11, S(3,t-1)+g00])
    if(c==1)
        tb_new(2,:) = [tb(1,:) 00]
    else
        tb_new(2,:) = [tb(3,:) 11]
    end
    [S(3,t), c] = min([S(2,t-1)+g10, S(4,t-1)+g01])
    if(c==1)
        tb_new(3,:) = [tb(1,:) 01]
    else
        tb_new(3,:) = [tb(3,:) 10]
    end
    [S(4,t), c] = min([S(2,t-1)+g00, S(4,t-1)+g10])
    if(c==1)
        tb_new(4,:) = [tb(1,:) 10]
    else
        tb_new(4,:) = [tb(3,:) 00]
    end
    tb = tb_new;
    end

[S(1, N+1), c] = min([S(1,N), S(3,N)])
if(c==1)
    tb_new(1,:) = [tb(1,:)]
else
    tb_new(1,:) = [tb(3,:)]
end
[S(3, N+1), c] = min([S(2,N), S(4,N)])
if(c==1)
    tb_new(3,:) = [tb(2,:)]
else
    tb_new(3,:) = [tb(4,:)]
end
[S(1, N+2), c] = min([S(1,N+1), S(3,N+1)])
if(c==1)
    tb_new(1,:) = [tb(1,:)]
else
    tb_new(1,:) = [tb(3,:)]
end
tb = tb_new;

    
    