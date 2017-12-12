function y = fun_bsplinePeriod( x, j, M )

N = length(x);
y = zeros(N, 1);
q = zeros(2 * M + 1, 1);
% êﬂì_ÇãÅÇﬂÇÈ
for i = 1:2 * M + 1
    q(i) = j - M + i - 1;
end

for i = 1:N
    y = fun_bspline(x, 1, 2 * M, q);
end

end

