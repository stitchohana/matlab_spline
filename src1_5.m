j = -1;
M = 2;

x = linspace(-2, 5, 1000)'; % �����W
y = fun_bsplinePeriod(x, j, M); % �����W�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
axis([-2, 5, -1, 2]); % �`��̈�̎w��
