function [LHS,RHS] = OST(theta,timestep,M,B,C,sol)
%OST
% M: [M],
% B: [B(tn+1),
% B(tn)],
% C: [C(tn+1),C(tn)], 
% sol: [phi(tn)]
% phi0=7;
LHS=M-theta*timestep*B(1);
RHS=(M + (1-theta)*timestep*B(2))*sol + timestep*(theta*C(1) + (1 - theta)*C(2));

end

