function [alpha, beta, q] = fun_interpCoeffParam(u, v, K)
N = length(u);
t = linspace(1, N, N)';
q = fun_genNode(t, K);
A = fun_genMat(t, K, q);
alpha = linsolve(A, u);
beta = linsolve(A, v);

end

