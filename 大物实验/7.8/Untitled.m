clf; clear; clc;

t = 1 : 1 : 10;
[X, Y] = meshgrid(t);
Z = [
    16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 14.20, 14.20, 16.00
    16.00, 14.20, 16.00, 9.70,  9.70,  9.70,  9.70,  16.00, 16.00, 16.00
    16.00, 16.00, 16.00, 9.70,  9.70,  9.70,  9.70,  16.00, 9.70,  9.70 
    16.00, 9.70,  9.70,  9.70,  9.70,  9.70,  9.70,  9.70,  14.20, 14.20
    16.00, 9.70,  9.70,  9.70,  9.70,  9.70,  9.70,  14.20, 14.20, 14.20
    16.00, 14.20, 16.00, 9.70,  9.70,  9.70,  9.70,  16.00, 16.00, 16.00
    16.00, 14.20, 16.00, 9.70,  9.70,  9.70,  9.70,  16.00, 16.00, 14.20
    16.00, 9.70,  9.70,  9.70,  9.70,  9.70,  9.70,  16.00, 16.00, 16.00
    9.70,  9.70,  9.70,  9.70,  9.70,  16.00, 9.70,  9.70,  9.70,  9.70 
    16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 16.00, 9.70,  16.00
    ];
mesh(X, Y, Z);
hold on;