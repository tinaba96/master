clear

N = 10000;

snr = (0.01:0.01:10)';     % Eb/No values (dB)

avgsnr = (0.5:1:9.5)';   

BER = zeros(size(snr));
avgBER = zeros(10,1);

for n = 1:length(snr)


    trellis = poly2trellis(3, {'1+x+x^2', '1+x^2'});

    %u = [0 0 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0];
    u = randi([0 1],1, N);
    code = convenc(u, trellis);
    x = 1 - 2*code;
    %var = 0.001;
    %noise = randn(size(x))*sqrt(var);
    %code_noise = x+noise;
    code_noise = awgn(x, snr(n));
    %uhat = vitdec(code_noise, trellis, 2,'trunc', 'unquant');
    %output_toolbox = convenc(uhat, trellis)




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



    for t = 2:N+1

        %A = code([2*t-3, 2*t-2]);

        
        
        g00 = (code_noise(2*t-3)-1)^2 + (code_noise(2*t-2)-1)^2;
        g01 = (code_noise(2*t-3)-1)^2 + (code_noise(2*t-2)+1)^2;
        g10 = (code_noise(2*t-3)+1)^2 + (code_noise(2*t-2)-1)^2;
        g11 = (code_noise(2*t-3)+1)^2 + (code_noise(2*t-2)+1)^2;

        
        [S(1,t), c] = min([S(1,t-1)+g00, S(3,t-1)+g11]);
        if(c==1)
            tb_new1 = [tb1 0 0];
        else
            tb_new1 = [tb3 1 1];
        end
        [S(2,t), c] = min([S(1,t-1)+g11, S(3,t-1)+g00]);
        if(c==1)
            tb_new2 = [tb1 1 1];
        else
            tb_new2 = [tb3 0 0];
        end
        [S(3,t), c] = min([S(2,t-1)+g10, S(4,t-1)+g01]);
        if(c==1)
            tb_new3 = [tb2 1 0];
        else
            tb_new3 = [tb4 0 1];
        end
        [S(4,t), c] = min([S(2,t-1)+g01, S(4,t-1)+g10]);
        if(c==1)
            tb_new4 = [tb2 0 1];
        else
            tb_new4 = [tb4 1 0];
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

    tb1 = tb_new1;
    tb3 = tb_new3;

    [S(1, N+3), c] = min([S(1,N+2), S(3,N+2)]);
    if(c==1)
        tb_new1 = [tb1];
    else
        tb_new1 = [tb3];
    end
    out = tb_new1 ;
    output_myimpl = cell2mat(out);
    
    nErrors = biterr(code, output_myimpl);

    BER(n) = nErrors / (2*N);

end


for n = 100:100:1000
    tmp = 0;
    for t = 1:100
        tmp = tmp + BER(n-t+1);
    end
    avgBER(n/100) = tmp/100;
end

semilogy(avgsnr, avgBER, 'o-', 'DisplayName', 'float version')
grid
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
legend
hold on