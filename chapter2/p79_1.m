clear;clc;clf;
hold on;
e = exp(1);

plot([0, 4 * pi], [-e.^(pi / 3), -e.^(pi / 3)], 'red-.', [0, 4 * pi], [e.^(pi / 3), e.^(pi / 3)], 'red-.');
x = 0 : pi / 50 : 4 * pi;
y = (e.^(x ./ 3)) .* sin(3 * x);
plot(x, y, 'blue*');