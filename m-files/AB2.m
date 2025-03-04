function [LHS,RHS] = AB2(timestep,M,B,C,sol)
%AB2 此处显示有关此函数的摘要
% M ... [M ], 
% B ... [B(t n ), B(t n −1 )],
% C ... [C(t n ), C(t n −1 )],
% sol ... [ φ (t n ), φ (t n −1 )]]
LHS = M;
RHS = (M+3/2*timestep*B(1))*sol(1) + (3*timestep/2)*C(1)...
      - timestep/2*B(2)*sol(2)-timestep/2*C(2);

end

