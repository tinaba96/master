rng(10,'twister');
M = 16; % Modulation order
bps = log2(M); % Bits per symbol
EbNo = (2:0.5:4);
pktLen = 500;

ber = zeros(size(EbNo));

turboEnc = comm.TurboEncoder('InterleaverIndicesSource','Input port');

turboDec = comm.TurboDecoder('InterleaverIndicesSource','Input port', ...
    'NumIterations',4);

awgnChannel = comm.AWGNChannel('NoiseMethod','Variance','Variance',1);
errorRate = comm.ErrorRate;

rate = pktLen/(3*pktLen+4*3);

for k = 1:length(EbNo)
        errorStats = zeros(1,3);
    EsNo = EbNo(k) + 10*log10(bps);       
    snrdB = EsNo + 10*log10(rate); % in dB
    noiseVar = 1./(10.^(snrdB/10));  
    awgnChannel.Variance = noiseVar;

    while errorStats(2) < 100 && errorStats(3) < 1e7
        % Generate random binary data
        data = randi([0 1],pktLen,1);
        % Interleaver indices
        intrlvrInd = randperm(pktLen);
        % Turbo encode the data
        encodedData = turboEnc(data,intrlvrInd);
        % Modulate the encoded data
        modSignal = qammod(encodedData,M,'InputType','bit','UnitAveragePower',true);
        % Pass the signal through the AWGN channel
        rxSignal = awgnChannel(modSignal);
        % Demodulate the received signal
        demodSignal = qamdemod(rxSignal,M,'UnitAveragePower',true,'OutputType','llr','NoiseVariance',noiseVar);
        % Turbo decode the demodulated signal. Because the bit mapping from the
        % demodulator is opposite that expected by the turbo decoder, the
        % decoder input must use the inverse of demodulated signal.
        rxBits = turboDec(-demodSignal,intrlvrInd);
        % Calculate the error statistics
        errorStats = errorRate(data,rxBits);
    end
    % Save the BER data and reset the bit error rate object
     ber(k) = errorStats(1);
     reset(errorRate)
end

semilogy(EbNo,ber,'-o')
grid
xlabel('Eb/No (dB)')
ylabel('Bit Error Rate')
uncodedBER = berawgn(EbNo,'qam',M); % Estimate of uncoded BER
hold on
semilogy(EbNo,uncodedBER)
legend('Turbo','Uncoded','location','sw')


