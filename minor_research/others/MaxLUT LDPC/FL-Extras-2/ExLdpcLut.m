%ExLdpcLut       - Example of setting up a finite-length  LDPC code simulation
%
%
% QuantDMC is (c) 2010-2012 Brian Kurkoski
% Distributed under an MIT-like license; see the file LICENSE
%



%First, generate the LUTs using QdeGenerateLut

dv = 3;         %LDPC variable node degree
dc = 4;         %LDPC check node degree
K  = 4;         %Number of levels per message (log2(K) bits per message)
filename = 'ExLuts.mat';   %output data file containing LUTs
usebsc = true;
p = 0.13;


QdeGenerateLut( ...
    'filename',filename, ...
    'dv',dv,...
    'dc',dc, ...
    'usebsc',usebsc, ...
    'p',p ...
);

%Then, perform the finite-length simulation

%Two LDPC codes are provided:

%codeflnm = 'H16_4P.mat';    %small test LDPC code: 16 code bits, 4 info bits
%p = 0.03;

codeflnm = 'H1000P.mat';   %1000 code bits, rate 1/4
p = 0.12;                  %p=0.12 should give BER ~ 2 E-2

%Note: If you want to design your own LDPC code, a generator matrix is also
%required, because analyzing the all-zeros codeword is not sufficient
%because the decoding maps could be asymmetical.

%we can simulate any BSC error probability p with this decoder:

[sys,curve] = LdpcLutSimulation(...
    'filename',filename, ...
    'codeflnm',codeflnm, ...
    'usebsc',usebsc, ...
    'errorlim',20, ...
    'p',p ...
);

fprintf('--- done ---\n')
fprintf('BER = %g, WER = %g based on %d word errors\n',curve.ber,curve.wer,curve.nworderr)

