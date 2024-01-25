function  gaussw = gw(n) % n is the number of intergrations punkts
if(n == 1)
    gaussw = 2;
elseif (n == 2)
    gaussw = [1,1];
elseif (n == 3)
    gaussw = [5/9, 8/9 , 5/9];
else 
    disp("no implementation")
end
end
