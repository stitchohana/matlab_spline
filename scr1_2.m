q = [1; 2; 4; 6; 7; 8; 10]; % �ߓ_��ݒ�
j = 3; % j�Ԗڂ�B-�X�v���C��
K = 4; % �iK-1�j��B-�X�v���C��

x = linspace(0, 11, 1000)'; % x���W��ݒ�
y = fun_bspline(x, j, K, q); % �֐��l�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot(q, zeros(length(q), 1), 'ro'); % �ߓ_�̕`��
axis([0, 11, -1, 2]); % �`��̈�̎w��
