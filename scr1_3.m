K = 3; % �iK-1�j��B�[�X�v���C��
q = [1; 2; 4; 6; 7; 8; 9]; % �ߓ_�̂�ݒ�
alpha = [1; 2; -0.5; 1]; % �W�萔��ݒ�

x = linspace(0, 11, 100)'; % �����W��ݒ�
y = fun_spline(x, K, q, alpha); % �֐��l�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot(q, zeros(length(q), 1), 'ro'); % �ߓ_�̕`��
axis([0, 11, -1, 2]); % �`��̈�̎w��