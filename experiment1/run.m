clear;
clc;

time = clock;
for i = 1 : 1000
    num2str(dichotomy(0, 1, 10^-4));
end
disp(['二分法：', ' 耗时(1000x)=', num2str(etime(clock, time)), ' 结果=', num2str(dichotomy(0, 1, 10^-4))]);
time = clock;
for i = 1 : 1000
    num2str(dichotomy(0, 1, 10^-4));
end
disp(['牛顿法：', ' 耗时(1000x)=', num2str(etime(clock, time)), ' 结果=',num2str(newton(0, 1, 10^-4))]);