function [out] = factorialSum( n )
%FACTORIAL Summary of this function goes here
%   Detailed explanation goes here
    function [out2] = factorial(num)
        out2 = 1;
        for index2 = 1 : num
            out2 = out2 * index2;
        end
    end

    out = 0;
    for index = 1 : n
        out = out + factorial(index);
    end
end