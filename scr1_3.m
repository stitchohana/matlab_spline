K = 3;
q = [1; 2; 4; 6; 7; 8; 9];
alpha = [1; 2; -0.5; 1];

x = linspace(0, 11, 100)';
y = fun_spline(x, K, q, alpha);

figure(1);
clf;
plot(x, y, 'b-');
hold on;
plot(q, zeros(length(q), 1), 'ro');
axis([0, 11, -1, 2]);