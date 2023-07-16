clear

N = 10000;

snr = (0.1:0.1:1)';     % Eb/No values (dB)

addpath('QuantDmc-4/quantDmc');

BER = zeros(size(snr));

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

    var(n) = 1/snr(n);
    M = 30
    
    %Create a fine DMC with M outputs from an AWGN channel
    [P,FineQuantizer,Boundary] = biAwgn2Dmc(var(n), M);
    
    qval = 8;
    
    %perform quantization
    Q = quantBiDmcMulti(P,qval);
    Q = Q{1};
    
    
    Pygx = P*Q';
    
    CumulativeSum = cumsum(Pygx,2);
    
    
    
       
    
    S = ones(4, N+3);
    S(2:4, 1) = 0;
    
    

    %tb = zeros(4, 0)
    tb1 = {};
    tb2 = {};
    tb3 = {};
    tb4 = {};

    tb_new1 = {};
    tb_new2 = {};
    tb_new3 = {};
    tb_new4 = {};

    random_input = rand(1,N);

    %R = rand;
        
        
    for t = 2:N+1
        
        %R = random_input(t-1);
        R1 = rand;
        R2 = rand;
       
       
        
        if(code(2*t-3) == 0)
            K = find(R1<CumulativeSum(2,:), 1);
            Py0gx0 = Pygx(2,K);
            Py1gx0 = Pygx(1,K);
        else
            K = find(R1<CumulativeSum(1,:), 1);
            Py1gx0 = Pygx(1,K);
            Py0gx0 = Pygx(2,K);
        end
        
        
        if(code(2*t-2) == 0)
            K = find(R2<CumulativeSum(2,:), 1);
            Py0gx1 = Pygx(2,K);
            Py1gx1 = Pygx(1,K);
        else
            K = find(R2<CumulativeSum(1,:), 1);
            Py1gx1 = Pygx(1,K);
            Py0gx1 = Pygx(2,K);
        end
        
        
        %A = code([2*t-3, 2*t-2]);


        [S(1,t), c] = max([Py0gx0*Py0gx1*S(1,t-1), Py1gx0*Py1gx1*S(3,t-1)]);
        if(c==1)
            tb_new1 = [tb1 0 0];
        else
            tb_new1 = [tb3 1 1];
        end
        [S(2,t), c] = max([Py1gx0*Py1gx1*S(1,t-1), Py0gx0*Py0gx1*S(3,t-1)]);
        if(c==1)
            tb_new2 = [tb1 1 1];
        else
            tb_new2 = [tb3 0 0];
        end
        [S(3,t), c] = max([Py1gx0*Py0gx1*S(2,t-1), Py0gx0*Py1gx1*S(4,t-1)]);
        if(c==1)
            tb_new3 = [tb2 1 0];
        else
            tb_new3 = [tb4 0 1];
        end
        [S(4,t), c] = max([Py0gx0*Py1gx1*S(2,t-1), Py1gx0*Py0gx1*S(4,t-1)]);
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


    [S(1, N+2), c] = max([S(1,N+1), S(3,N+1)]);
    if(c==1)
        tb_new1 = [tb1];
    else
        tb_new1 = [tb3];
    end
    [S(3, N+2), c] = max([S(2,N+1), S(4,N+1)]);
    if(c==1)
        tb_new3 = [tb2];
    else
        tb_new3 = [tb4];
    end

    tb1 = tb_new1;
    tb3 = tb_new3;

    [S(1, N+3), c] = max([S(1,N+2), S(3,N+2)]);
    if(c==1)
        tb_new1 = [tb1];
    else
        tb_new1 = [tb3];
    end
    out = tb_new1;
    output_myimpl = cell2mat(out);
    
    %nErrors = biterr(code, output_myimpl);

    nErrors = biterr(code, output_myimpl);
   
    
    BER(n) = nErrors / (2*N);

end

semilogy(snr, BER, '.', 'DisplayName', 'Quantized to 16')
grid
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
legend
hold on