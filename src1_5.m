u = 0;
j = 2;
M = 2;

x = linspace(-2, 5, 1000)'; % �����W
y = fun_bsplinePeriod(u, j, M); % �����W�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot(q, zeros(length(q), 1), 'ro'); % �ߓ_�̕`��
axis([0, 11, -1, 3]); % �`��̈�̎w��
