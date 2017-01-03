clear;clc;clf;
hold on;

plot([-1 / 2, -1 / 2], [-2, 2], 'b', [-1 / 2, 3 / 2], [2, 2], 'b', [-1 / 2, 3 / 2], [-2, -2], 'b');
x1 = -1 / 2 : 0.1 : 3 / 2;
y1 = sqrt(2 * x1 + 1);
plot(x1, -y1, 'b', x1, y1, 'b');

plot([3 / 2, 3 / 2], [-2, 2], 'r', [3 / 2, 2], [2, 2], 'r', [3 / 2, 2], [-2, -2], 'r', [2, 2], [-2, 2], 'r');
x2 = 3 / 2 : 0.1 : 2;
y2 = sqrt(16 - 8 * x2);
plot(x2, -y2, 'r', x2, y2, 'r');