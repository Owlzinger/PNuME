% Fkt. 0
function quadplot(nodes,elements,sol)
x = nodes(:,1);
y = nodes(:,2);
T = [elements(:,1:3);elements(:,3:4),elements(:,1)];
trisurf(T, x, y, sol);
end