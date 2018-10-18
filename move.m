function sn = move(sc,d)

    xc = sc(1);
    yc = sc(2);
    hc = sc(3); 

        if d == 1
            yc = yc + 1;
        elseif d ==2
            xc = xc + 1;
        elseif d == -1
            yc = yc - 1;
        elseif d == -2;
            xc = xc - 1;
        end
        
    sn = [xc yc hc];
end