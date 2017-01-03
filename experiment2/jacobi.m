function [ x, k ] = jacobi( A, b, ep, kMax )
%JACOBI Summary of this function goes here
%   Detailed explanation goes here

    % @param A �������ϵ������
    % @param b ��������Ҷ���
    % @param ep ����Ҫ��
    % @return x ������Ľ�
    % @return k ��������

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