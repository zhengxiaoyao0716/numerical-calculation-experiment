function [ result ] = dichotomy(min, max, accuracy)
%DICHOTOMY Summary of this function goes here
%   Detailed explanation goes here

    function [out] = expression(in)
        out = exp(1)^in + 3 * in^3 - in^2 - 2;
    end

    x = min;
    leftY = 0;
    while true
        y = expression(x);
        if y > -accuracy && y < accuracy
            % return x.
            result = x;
            return;
        end
        % else, ÅÐ¶ÏÇø¼ä
        if y * leftY >= 0
            min = x;
            leftY = y;
        else
            max = x;
        end
        x = (min + max) / 2;
    end

end

