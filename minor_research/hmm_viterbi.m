A = [
  0.1 0.7 0.2
  0.2 0.1 0.7
  0.7 0.2 0.1
];


B = [
  0.9 0.1
  0.6 0.4
  0.1 0.9
];

rho = [1 1 1] / 3;

[s, x] = GenerateSample(A, B, rho, 100);


histcounts(s)
histcounts(x)

crosstab(s(1:end-1), s(2:end))

crosstab(s(1:end), x(1:end))

 estimated = Viterbi(A, B, rho, x);
 
 mean(estimated == s)
 
 A_hat = [0 rho; zeros(size(A, 1), 1) A]
 
 B_hat = [zeros(1, size(B, 2)); B]
 
 estimated2 = hmmviterbi(x, A_hat, B_hat) - 1;

 all(estimated == estimated2)
 
 
 
function [s, x] = GenerateSample(A, B, rho, n)
    s(1) = sample(rho);
    x(1) = sample(B(s(1), :));
    for t = 2:n
        s(t) = sample(A(s(t-1), :));
        x(t) = sample(B(s(t), :));
    end
end

function i = sample(p)
    i = min(find(rand <= cumsum(p) / sum(p)));
end

function s = Viterbi(A, B, rho, x)
    n = length(x);
    % Step 1  ‰Šú‰»
    P(:, 1) = log(rho') + log(B(:, x(1)));                 % (8.28)
    I(:, 1) = zeros(length(rho), 1);                       % (8.29)
    % Step 2  Ä‹A“IŒvŽZ
    for t = 2:n
        Z = bsxfun(@plus, P(:, t-1), log(A));
        I(:, t) = argmax(Z);                               % (8.31)
        P(:, t) = diag(Z(I(:, t), :)) + log(B(:, x(t)));   % (8.30)
    end
    % Step 3  I—¹
    s(n) = min(find(P(:, n) == max(P(:, n))));             % (8.33)
    % Step 4  Œn—ñ‚Ì•œŒ³
    for t = n-1:-1:1
        s(t) = I(s(t+1), t+1);                             % (8.34)
    end
end

function I = argmax(Z)
    [R, C] = find(bsxfun(@eq, Z, max(Z)));
    I = R(find(diff([0; C])));
end



