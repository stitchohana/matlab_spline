function y = fun_splinePeriod(x, v, n, M, alpha)
% n ŒvŽZ”ÍˆÍ
N = length(v);
sum = zeros(size(x));
for i = -2 * n:2 * n
    j = i;
    while(1)
        if j <= 0
            j = j + N;
        elseif j > N
            j = j - N;
        end
        if j > 0 && j <= N
            break;
        end
    end
    sum = sum + alpha(j) * fun_bsplinePeriod(x, i, M);
end

y = sum; % ‚™À•W‚ð‹‚ß‚é
end

