v = [0; 1; 2; 1; 0];% データの値
n = 10;% 計算範囲
x = linspace(-n, n, 1000)'; % ｘ座標
M = 2;
alpha = fun_interpCoeffPeriod(v, M);

y = fun_splinePeriod(x, v, n, M, alpha);

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
plot([1; 2; 3; 4; 5], v, 'ro'); % データ点を描画
axis([-10, 10, -1, 3]); % 描画領域の指定