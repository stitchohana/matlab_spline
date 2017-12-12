function alpha = fun_interpCoeffPeriod(v, M)

N = length(v);
A = fun_genMatPeriod(N, M);
alpha = linsolve(A, v);

end

