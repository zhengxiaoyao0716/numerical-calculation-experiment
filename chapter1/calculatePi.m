function [ pi ] =calculatePi( accuracy )
%PI Summary of this function goes here
%   Detailed explanation goes here
    pi = 1;
    index = 1;
    operator = 1;
    while (index <= 10^accuracy)
        index = index + 2;
        operator = operator * -1;
        pi = pi + operator * (1 / index);
    end
    pi = pi * 4;
end