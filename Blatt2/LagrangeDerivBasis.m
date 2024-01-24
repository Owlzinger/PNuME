function wert_dBasis = LagrangeDerivBasis(x,n,i,x_node)
wert_dBasis=0;
for m=1:n+1
    value_inner=1;
    if m~=i
        for k=1:n+1
            
            if k~=i && k~=m
                value_inner=value_inner.*(x-x_node(k))/(x_node(i)-x_node(k));
            
            % else
            %     value_inner = 1.*value_inner;
            end
        end
       
        wert_dBasis = wert_dBasis + value_inner ./ (x_node(i) - x_node(m));
    % else
    %     wert_dBasis=wert_dBasis;
    end

end
end