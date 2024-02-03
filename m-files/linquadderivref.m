function deriv = linquadderivref(xi,eta)
% N: 拉格朗日一阶插值函数
% dN1/dxi, dN1/deta
% dN2/dxi, dN2/deta
dN1=[eta/4 - 1/4,xi/4 - 1/4];
dN2=[1/4 - eta/4,- xi/4 - 1/4];
dN3 = [eta/4 + 1/4,xi/4 + 1/4] ;
dN4 =[ - eta/4 - 1/4,1/4 - xi/4];
% deriv 第一列是 d_xi,第二列是 d_eta
deriv = [dN1;dN2;dN3;dN4];
end