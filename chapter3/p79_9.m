clf; clear; clc;

t = -2 : 0.1 : 2;
[x, y] = meshgrid(t);
z1 = 5 - x.^2 - y.^2;
subplot(1, 3, 1);mesh(x, y, z1);
z2 = 3 * ones(size(x));
subplot(1, 3, 2);mesh(x, y, z2);
r = abs(z1 - z2) <= 0.1;
xx = r .* x; yy = r .* y; zz = r .* z2;
subplot(1, 3, 3);plot3(xx(r ~= 0), yy(r ~= 0), zz(r ~= 0), '.');