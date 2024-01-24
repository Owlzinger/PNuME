function  x_numeric = lineintersection(P1,P2)
% "计算两个点的交点的数值解";
% y= kx+b y=2, b=1
% k=(y2-y1)/(x2-x1)
k = (P2(2) - P1(2))/(P2(1) - P1(1));
x_numeric = 1/k ;
end