% ß“_‚ÆŒW‚è”‚ğ‹‚ß‚é
function [alpha,q] = fun_interpCoeff(u, v, K)

q = fun_genNode(u, K);
A = fun_genMat(u, K, q);
alpha = linsolve(A, v);

end

