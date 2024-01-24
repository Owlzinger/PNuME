clc;clear;
delta = logspace(-20,5,100);

x = zeros(1,length(delta));
y = zeros(1,length(delta));
x_exact = 1.0 % 
for i = 1:length(delta)
%     delta = 10 ^ (i -21);
    P1 = [0. 1.];
    P2 = [delta(i)  1. + delta(i)];
    x(:,i) = delta(i);
    x_num = lineintersection(P1,P2);
    y(:,i) = abs(x_exact - x_num);
end

loglog(x,y);