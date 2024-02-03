function gaussx = gx(n) % n is the number of intergration punkts
% Fkt. III
% Praesentation Nach Seite 14
if(n == 1)
    gaussx = 0;
elseif (n == 2)
    gaussx = [-1/sqrt(3), 1/sqrt(3)];
elseif (n == 3)
    gaussx = [-sqrt(3/5), 0 , sqrt(3/5)];
else 
    disp("no implementation")
end
end
