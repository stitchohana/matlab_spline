v = [0; 1; 2; 1; 0];% �f�[�^�̒l
M = 2;
alpha = fun_interpCoeffPeriod(v, M);
N = length(v);
sum = zeros(size(x));

for i = -10:10
    j = i;
    while(1)
        if j <= 0
            j = j + N;
        elseif j > N
            j = j - N;
        end
        if j > 0 && j <= N
            break;
        end
    end
    sum = sum + alpha(j) * fun_bsplinePeriod(x, i, M);
end
x = linspace(-10, 10, 1000)'; % �����W
y = sum; % �����W�����߂�

figure(1); % �`��E�B���h�E�P���J��
clf; % �`��E�B���h�E�N���A
plot(x, y, 'b-'); % �O���t�`��
hold on; % �㏑���`��ݒ�
plot([1; 2; 3; 4; 5], v, 'ro'); % �f�[�^�_��`��
axis([-10, 10, -1, 3]); % �`��̈�̎w��