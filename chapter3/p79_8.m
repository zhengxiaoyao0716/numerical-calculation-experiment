clf; clear; clc;

[x, y, z] = sphere(30);
x = x * 3; y = y * 4; z = z * 2;
subplot(2, 2, 1), surf(x, y, z);
subplot(2, 2, 2), surf(x, y, z), view(0, 0);
subplot(2, 2, 3), surf(x, y, z), view(90, 0);
subplot(2, 2, 4), surf(x, y, z), view(90, 90);