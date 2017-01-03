function [ result ] = newton(min, max, accuracy)
%NEWTON Summary of this function goes here
%   Detailed explanation goes here

    x = max;
    while true
        % 计算表达式.
        value = abs(exp(1)^x + 3 * x^3 - x^2 - 2);
        if value < accuracy
            % return x.
            result = x;
            return;
        end
        % 计算斜率.
        k = exp(1)^x + 9 * x^2 - 2 * x;
        x = x - value / k;
        if x < min
            % return x.
            result = x;
            break;
        end
    end

end

