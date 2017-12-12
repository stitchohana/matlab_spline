function y = fun_bsplinePeriod( x, j, M )

N = length(x);
y = zeros(N, 1);
q = zeros(2 * M + 1, 1);
for i = 1:2 * M + 4
    q(i) = j - M + i - 1;
end

for i = 1:N
    y(i) = fun_bspline(x(i), j, 2 * M, q);
end

end

