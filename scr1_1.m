q = [1; 2; 4; 6; 7]; % 節点を設定
j = 3; % j番目のB-スプライン

x = linspace(0, 10, 1000)'; % x座標を設定
y = fun_bspline1(x, j, q); % 関数値を求める

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
plot(q, zeros(length(q), 1), 'ro'); % 節点の描画
axis([0, 10, -1, 2]); % 描画領域の指定
