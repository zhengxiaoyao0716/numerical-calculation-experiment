clear;clc;clf;
hold on;

x = -pi : pi / 10 : pi;
subplot(2, 2, 1), plot(x, x .* cos(x), 'r'),
title('y = x * cos(x)'), legend('y = x * cos(x)'), xlabel('x÷·'), ylabel('y÷·');

x = pi : pi / 10 : 4 * pi;
subplot(2, 2, 2), plot(x, x .* tan(1 ./ x) .* sin(x .^ 3), 'g'),
title('y = x * tan(1/x) * sin(x^3)'), legend('y = x * tan(1/x) * sin(x^3)'), xlabel('x÷·'), ylabel('y÷·');

x = 1 : 0.1 : 8;
subplot('position', [0.1, 0.1, 0.8, 0.4]), plot(x, exp(1).^(1./x) .* sin(x), 'b'), axis([0, 9, -3, 4]),
title('y = e^{1/x}sin(x)'), legend('y = e^{1/x}sin(x)'), xlabel('x÷·'), ylabel('y÷·');

gtext('y = x * cos(x)');
gtext('y = x * tan(1/x) * sin(x^3)');
gtext('y = e^{1/x}sin(x)');