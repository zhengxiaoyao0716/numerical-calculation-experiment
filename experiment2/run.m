A = [14, 2, 1, 5
    8, 17, 2, 10
    4, 18, 3, 6
    12, 26, 11, 20];
b = [1, 2, 3, 4]';
disp('Jacobi');
[x, k] = jacobi(A, b, 10^-4)
disp('Gauss - Seidel');
[x, k] = gauss_seidel(A, b, 10^-4)