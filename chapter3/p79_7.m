clf; clear; clc;

t = -1 : 0.1 : 1;
[x, y] = meshgrid(t);
z = x.^2 + 3 * y .^ 2;
subplot(2, 3, 1), mesh(x, y, z);
subplot(2, 3, 2), surf(x, y, z), shading flat;
subplot(2, 3, 3), surf(x, y, z), shading interp;
subplot(2, 3, 4), surf(x, y, z);    % , shading faceted;
subplot(2, 3, 5), surf(x, y, z), light('position', [-1, -1, 0]);
subplot(2, 3, 6), surf(x, y, z), light('position', [1, 0, 0.5]);