u = [1; 3; 4; 2; 1];
v = [2; 1; 3; 4; 3];
M = 2;
N = length(u);
[alpha, beta] = fun_interpCoeffParamPeriod(u, v, M); % �ߓ_���W�萔�����߂�
t = linspace(-N, N, 1000)';

x = fun_splinePeriod(t, u, N, M, alpha); % �����W
y = fun_splinePeriod(t, v, N, M, beta); % �����W�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot(u, v, 'ro'); % �f�[�^�_��`��
axis([0, 5, 0, 5]); % �`��̈�̎w��