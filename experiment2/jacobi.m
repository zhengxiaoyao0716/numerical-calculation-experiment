function [ x, k ] = jacobi( A, b, ep, kMax )
%JACOBI Summary of this function goes here
%   Detailed explanation goes here

    % @param A 方程组的系数矩阵
    % @param b 方程组的右端项
    % @param ep 精度要求。
    % @return x 方程组的解
    % @return k 迭代次数

    if nargin == 3
        kMax = 100;
    end
    
    n = length(A);
    x = zeros(n, 1); y = zeros(n, 1);
    k = 0;
    while true
        for i = 1:n       
            y(i) = b(i);
            for j = 1:n
                if j ~= i
                    y(i) = y(i) - A(i, j) * x(j);
                end
            end
            if abs(A(i, i)) < 1e-10 || k >= kMax
                return;
            end
            y(i) = y(i) / A(i, i);
        end
        if norm(y - x, inf) < ep
            break;
        end
        x = y; k = k + 1;
    end
end