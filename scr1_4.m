u = [1; 3; 4; 7; 8]; % �f�[�^�̂����W
v = [0.2; 0.5; 1; 2; 1.5]; % �f�[�^�̂����W
K = 4; % �R���X�v���C��

[alpha, q] = fun_interpCoeff(u, v, K); % �ߓ_���W�萔�����߂�
x = linspace(1, 8, 1000)'; % �����W
y = fun_spline(x, K, q, alpha); % �����W�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot(u, v, 'ro'); % �f�[�^�_��`��
axis([0, 11, -1, 3]); % �`��̈�̎w��