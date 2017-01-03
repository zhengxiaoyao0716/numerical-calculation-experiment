clf; clear; clc;

t = -1 : 0.02 : 1;
[X, Y] = meshgrid(t);
Z1 = X.^2 + 2 * Y .^ 2;
mesh(X, Y, Z1);
hold on;
Z2 = 2 - X .^ 2;
mesh(X, Y, Z2);

R = abs(Z1 - Z2) == 0;
Rx = R .* X;
Ry = R .* Y;
Rz = R .* Z1;
plot3(Rx(R ~= 0), Ry(R ~= 0), Rz( R ~= 0), 'r*');
plot(Rx(R ~= 0), Ry(R ~= 0), '*');

title('«˙√Êz=x^2+2y^2∫Õ«˙√Êz=2-x^2');
xlabel('x÷·'), ylabel('y÷·'), zlabel('z÷·');