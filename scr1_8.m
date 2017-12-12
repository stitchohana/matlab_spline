u = [1; 3; 4; 2; 1];
v = [2; 1; 3; 4; 3];
M = 2;
N = length(u);
[alpha, beta] = fun_interpCoeffParamPeriod(u, v, M); % 節点を係り数を求める
t = linspace(-N, N, 1000)';

x = fun_splinePeriod(t, u, N, M, alpha); % ｘ座標
y = fun_splinePeriod(t, v, N, M, beta); % ｙ座標を求める

figure(1); % 描画ウィンドウ１を開く
clf; % 描画ウィンドウクリア
plot(x, y, 'b-'); % グラフ描画
hold on; % 上書き描画設定
plot(u, v, 'ro'); % データ点を描画
axis([0, 5, 0, 5]); % 描画領域の指定