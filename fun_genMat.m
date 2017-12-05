function A = fun_genMat( u, K ,q )

N = length(u);
A = zeros(N, N);

for i = 1:N
    for j = 1:N
        A(i, j) = fun_bspline(u(i), j, K, q);
    end
end

end

