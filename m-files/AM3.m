function [LHS,RHS] = AM3(timestep,M,B,C,sol)
% M ... [M],
% B ... [B(t n+1 ), B(t n ), B(t n −1 )],
% C ... [C(t n+1 ), C(t n ), C(t n −1 )],
% sol ... [ φ (t n ), φ (t n −1 )]]
LHS = M - 5/12*timestep*B(1);
RHS =(M + 2/3*timestep*B(2))*sol(1) + 5/12*timestep*C(1) + 2/3*timestep*C(2)...
     - timestep/12*(B(3)*sol(2) + C(3));
end