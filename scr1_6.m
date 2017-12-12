v = [0; 1; 2; 1; 0];% データの値
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
x = linspace(-10, 10, 1000)'; % ｘ座標
y = sum; % ｙ座標を求める

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
plot([1; 2; 3; 4; 5], v, 'ro'); % データ点を描画
axis([-10, 10, -1, 3]); % 描画領域の指定