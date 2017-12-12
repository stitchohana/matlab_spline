function A = fun_genMatPeriod(N, M)
% N データ点の数
% M M
x = linspace(-2, 5, 1000)'; % ｘ座標
A = zeros(N, N);
for i = 1:N
    for j = 1:N
        if 1 <= j && j <= i + M -1
            A(i, j) = fun_bsplinePeriod(i, j, M);
        elseif i - M + 1 + N <= j && j <= N
            A(i, j) = fun_bsplinePeriod(i, j - N, M);
        elseif i - M + 1 <=j && j <= i + M - 1
            A(i, j) = fun_bsplinePeriod(i, j, M);
        elseif i - M + 1 <= j && j <= i + M -1
            A(i, j) = fun_bsplinePeriod(i, j, M);
        elseif 1 <= j && j <= i + M - 1 - N
            A(i, j) = fun_bsplinePeriod(i, j - N, M);
        elseif i - M + 1 <= j && j <= N
            A(i, j) = fun_bsplinePeriod(i, j, M);
        end
    end
end
end

