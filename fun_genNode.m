function q = fun_genNode( u, K )

N = length(u);
q = zeros(N + K, 1);

for  i = 1:K
    q(i) = u(1);
end

for i = 1 + K:N
    q(i) = (u(i - K) + u(i))/2;
end

for i = N + 1:N + K
    q(i) = u(N) + 0.0001;
end


end

