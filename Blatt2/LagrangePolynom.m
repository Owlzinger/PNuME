function wert_poly = LagrangePolynom(x,n,x_node,f_node)
wert_poly = 0;
% 原版是 k = 1: n+1 , i 对应课件
for i = 1: n+1
    wert_poly = wert_poly + LagrangeBasis(x,n,i,x_node).*f_node(i);
end
end