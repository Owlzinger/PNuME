clc;clear;

x_node = [0.0 1.0 2.0 3.0 4.0];
f_node = [0.0 0.031250 0.131687 0.237304 0.327680];

x = 0:0.01:4;
y = (x./(x+1)).^5;
% 0.6 是要推断的点
% 2.1 Grad 1
f1 = LagrangePolynom(0.6,1,x_node,f_node);
df1 = LagrangeDerivPolynom(0.6,1,x_node,f_node);
% 2.2 Grad 4
f4 = LagrangePolynom(0.6,4,x_node,f_node);
df4 = LagrangeDerivPolynom(0.6,4,x_node,f_node);
% 2.3 Grad 80, 不使用原来的 x, fx, 而是使用[0.0,4.0]区间内的 x 和对应的 y
x80 = 0:0.05:4;
y80 = (x80./(x80+1)).^5;
f80 = LagrangePolynom(0.6,80,x80,y80);
df80 = LagrangeDerivPolynom(0.6,80,x80,y80);

plot(x,y,...
    x,LagrangePolynom(x,1,x_node,f_node),...
    x,LagrangePolynom(x,4,x_node,f_node),'--',...
    x80,LagrangePolynom(x80,80,x80,y80),'--+',...
    x,LagrangeDerivPolynom(x,4,x_node,f_node))
xlabel('x');
ylabel('f(x)');
legend('exakte Funktion','Polynom P1','Polynom P4',...
    'Polynom P80','erste Ableitung Polynom4')

format long
f1
df1
f4
df4
f80
df80