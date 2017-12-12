u = [1; 3; 4; 2; 1];
v = [2; 1; 3; 4; 3];
K = 3; % �R���X�v���C��
N = length(u);
[alpha, beta, q] = fun_interpCoeffParam(u, v, K); % �ߓ_���W�萔�����߂�
t = linspace(1, N, 1000)';

x = fun_spline(t, K, q, alpha); % �����W
y = fun_spline(t, K, q, beta); % �����W�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot(u, v, 'ro'); % �f�[�^�_��`��
axis([0, 5, 0, 5]); % �`��̈�̎w��