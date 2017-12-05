% Bj1�̊֐�
% param x x�̍��W
% param j B-�X�v���C���̓Y����
% param q �ߓ_
function y = fun_bspline1(x, j, q)

	length_x = length(x);
	y = zeros(length_x, 1);
	
	for i = 1:length_x
		if (q(j) <= x(i) && x(i) < q(j + 1))
			y(i) = 1;
		end
	end

end