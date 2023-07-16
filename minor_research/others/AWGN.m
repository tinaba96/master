A = [-1, 1]

awgn = awgn(A, 0.66)

g00 = (awgn(1)+1)^2 + (awgn(2)+1)^2
g01 = (awgn(1)+1)^2 + (awgn(2)-1)^2
g10 = (awgn(1)-1)^2 + (awgn(2)+1)^2
g11 = (awgn(1)-1)^2 + (awgn(2)-1)^2
