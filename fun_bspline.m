% K-1次関数　Bjk
% param x xの座標
% param j B-スプラインの添え字
% param K K
% param q 節点
function y = fun_bspline(x, j, K, q)

	if K == 1   
		y = fun_bspline1(x, j, q);
	else
		length_x = length(x);
		
		y1 = zeros(length_x, 1);
		if q(j + K - 1) - q(j) > 0.00001
			y1 = (x - q(j)) / (q(j + K - 1) - q(j));
		end
		y2 = zeros(length_x, 1);
		if q(j + K) - q(j + 1) > 0.00001
			y2 = (q(j + K) - x) / (q(j + K) - q(j + 1));
		end
		y = y1 .* fun_bspline(x, j, K - 1, q) + y2 .* fun_bspline(x, j + 1, K - 1, q);
	end

end

