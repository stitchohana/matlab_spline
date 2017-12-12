j = -1;
M = 2;

x = linspace(-2, 5, 1000)'; % ｘ座標
y = fun_bsplinePeriod(x, j, M); % ｙ座標を求める

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
axis([-2, 5, -1, 2]); % 描画領域の指定
