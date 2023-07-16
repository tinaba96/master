clear

N = 10000;

snr = (0.01:0.01:10)';     % Eb/No values (dB)

avgsnr = (0.5:1:9.5)';     


addpath('QuantDmc-4/quantDmc');

BER = zeros(size(snr));
avgBER = zeros(10,1);

qval = 10^6; 
%M = 30;


for n = 1:length(snr)


    trellis = poly2trellis(3, {'1+x+x^2', '1+x^2'});

    %u = [1 1 0 1 0 0 1 1 1 0 0 1 0 1 1 0 0 1 1 0];
    %u = randi([0 1],1, N);
    u = ones(1, N);
    code = convenc(u, trellis);
   
    var(n) = 1/snr(n);
    
    %Create a fine DMC with M outputs from an AWGN channel
    %[P,FineQuantizer,Boundary] = biAwgn2Dmc(var(n), M);
    
    Pygx = biAwgn2Dmc(var(n), linspace(-1,1,qval));
    
    %perform quantization
    %Q = quantBiDmcMulti(P,qval);
    %Q = Q{1};
    
    
    %Pygx = P*Q';
    
    CumulativeSum = cumsum(Pygx,2);
    
    
    ch_out = zeros(1, length(code));
       
    
    S = ones(4, N+3);
    S(2:4, 1) = 0;
    S(1:4, N+2) = 0;
    S(1:4, N+3) = 0;
    

    tb1 = {};
    tb2 = {};
    tb3 = {};
    tb4 = {};

    tb_new1 = {};
    tb_new2 = {};
    tb_new3 = {};
    tb_new4 = {};

    random_input = rand(1,N);

    
    for t = 2:N+1
              
        R1 = rand;
        R2 = rand;
       
               
        if(code(2*t-3) == 0)
            ch_out(2*t-3) = find(R1<CumulativeSum(1,:), 1);
        else
            ch_out(2*t-3) = find(R1<CumulativeSum(2,:), 1);
        end 
            
        
        if(code(2*t-2) == 0)
            ch_out(2*t-2) = find(R2<CumulativeSum(1,:), 1);
        else
            ch_out(2*t-2) = find(R2<CumulativeSum(2,:), 1);
        end
    end
    
    
        
    for t = 2:N+1
        
        
        Py1gx0 = Pygx(1, ch_out(2*t-3));
        Py1gx1 = Pygx(2, ch_out(2*t-3));
        Py2gx0 = Pygx(1, ch_out(2*t-2));
        Py2gx1 = Pygx(2, ch_out(2*t-2));
                
        
        %A = code([2*t-3, 2*t-2]);


        [S(1,t), c] = max([Py1gx0*Py2gx0*S(1,t-1), Py1gx1*Py2gx1*S(3,t-1)]);
        if(c==1)
            tb_new1 = [tb1 0 0];
        else
            tb_new1 = [tb3 1 1];
        end
        [S(2,t), c] = max([Py1gx1*Py2gx1*S(1,t-1), Py1gx0*Py2gx0*S(3,t-1)]);
        if(c==1)
            tb_new2 = [tb1 1 1];
        else
            tb_new2 = [tb3 0 0];
        end
        [S(3,t), c] = max([Py1gx1*Py2gx0*S(2,t-1), Py1gx0*Py2gx1*S(4,t-1)]);
        if(c==1)
            tb_new3 = [tb2 1 0];
        else
            tb_new3 = [tb4 0 1];
        end
        [S(4,t), c] = max([Py1gx0*Py2gx1*S(2,t-1), Py1gx1*Py2gx0*S(4,t-1)]);
        if(c==1)
            tb_new4 = [tb2 0 1];
        else
            tb_new4 = [tb4 1 0];
        end

        tb1 = tb_new1;
        tb2 = tb_new2;
        tb3 = tb_new3;
        tb4 = tb_new4;

        S(:,t) = S(:,t) / sum(S(:,t));

            
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
    
    %Normalize the state metrics after each step:
    
end

for n = 100:100:1000
    tmp = 0;
    for t = 1:100
        tmp = tmp + BER(n-t+1);
    end
    avgBER(n/100) = tmp/100;
end

semilogy(avgsnr, avgBER, 'o-', 'DisplayName', 'Quantized to 10^6')
grid
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
legend
hold on