u = [1; 3; 4; 7; 8]; % データのｘ座標
v = [0.2; 0.5; 1; 2; 1.5]; % データのｙ座標
K = 4; % ３次スプライン

[alpha, q] = fun_interpCoeff(u, v, K); % 節点を係り数を求める
x = linspace(1, 8, 1000)'; % ｘ座標
y = fun_spline(x, K, q, alpha); % ｙ座標を求める

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
plot(u, v, 'ro'); % データ点を描画
axis([0, 11, -1, 3]); % 描画領域の指定