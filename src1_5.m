u = 0;
j = 2;
M = 2;

x = linspace(-2, 5, 1000)'; % ｘ座標
y = fun_bsplinePeriod(u, j, M); % ｙ座標を求める

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
plot(q, zeros(length(q), 1), 'ro'); % 節点の描画
axis([0, 11, -1, 3]); % 描画領域の指定
