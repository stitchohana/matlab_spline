function y = fun_spline( x, K, q, alpha )

N = length(alpha);
sum = zeros(size(x));

for j = 1:N
    sum = sum + alpha(j) * fun_bspline(x, j, K, q);
end

y = sum;
end

