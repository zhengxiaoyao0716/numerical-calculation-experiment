function [ x, k ] = gauss_seidel( A, b, ep, kMax )
%GAUSS_SEIDEL Summary of this function goes here
%   Detailed explanation goes here
    
    % @param A �������ϵ������
    % @param b ��������Ҷ���
    % @param ep ����Ҫ��
    % @return x ������Ľ�
    % @return k ��������

    if nargin == 3
        kMax = 100;
    end
    
    [n,m] = size(A);
    nb = length(b);
    %�������������е�ά�������ʱ��ֹͣ���㣬�����������Ϣ
    if n ~= m
        error('����A�����������������!');
    end
    %�����������Ҷ����ά����ƥ��ʱ��ֹͣ���㣬�����������Ϣ
    if n ~= nb
        error('����A�����������b�ĳ������!');
    end 
    L = zeros(n, n);
    U = zeros(n, n);
    D = zeros(n, n);
    for i = 2:n
        for j = 1:i - 1
            L(i, j) = -A(i, j);
        end
    end
    for i = 1 : n - 1
        for j = i + 1 : n
            U(i, j) = -A(i, j);
        end
    end
    for i = 1 : n
        D(i, i)=A(i, i);
    end
    B = (D - L) \ U;        %BΪ��������
    g = (D - L) \ b;        %gΪ�Ҷ���
    pr = max(abs(eig(B))); %����������װ뾶
    if pr >= 1
        error('���������װ뾶����1������������');
    end
    k = 0;
    tol = 1;
    x0 = zeros(size(b));
    while tol >= ep
        x = B * x0 + g;
        k = k + 1;         %��������
        tol = norm(x - x0);%ǰ������������������
        x0 = x;
        if(k >= kMax)
            disp('Warning: ��������̫�࣬���ܲ�������');
            return;
        end
    end
end