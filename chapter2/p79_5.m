clear;clc;clf;
% hold on;

t = 0 : pi / 10 : 20 * pi;
x = t .* cos(pi / 6 * t);
y = t .* sin( pi / 6 * t);
z = 2 * t;
plot3(x, y, z), xlabel('t * cos(\pi/6 * t)'), ylabel('t * sin(\pi/6 * t)'), zlabel('2 * t');
grid on;