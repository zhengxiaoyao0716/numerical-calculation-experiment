clear;
clc;

time = clock;
for i = 1 : 1000
    num2str(dichotomy(0, 1, 10^-4));
end
disp(['���ַ���', ' ��ʱ(1000x)=', num2str(etime(clock, time)), ' ���=', num2str(dichotomy(0, 1, 10^-4))]);
time = clock;
for i = 1 : 1000
    num2str(dichotomy(0, 1, 10^-4));
end
disp(['ţ�ٷ���', ' ��ʱ(1000x)=', num2str(etime(clock, time)), ' ���=',num2str(newton(0, 1, 10^-4))]);