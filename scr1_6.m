v = [0; 1; 2; 1; 0];% �f�[�^�̒l
n = 10;% �v�Z�͈�
x = linspace(-n, n, 1000)'; % �����W
M = 2;
alpha = fun_interpCoeffPeriod(v, M);

y = fun_splinePeriod(x, v, n, M, alpha);

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot([1; 2; 3; 4; 5], v, 'ro'); % �f�[�^�_��`��
axis([-10, 10, -1, 3]); % �`��̈�̎w��