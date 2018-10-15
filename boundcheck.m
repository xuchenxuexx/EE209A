function bc = boundcheck(xc,yc,d,W,L)
    
    if (xc == 1) && (d == -2)
        bc = 1;
    elseif (xc == L) && (d == 2)
        bc = 1;
    elseif (yc == 1) && (d == -1)
        bc = 1;
    elseif (yc == W) && (d == 1)
        bc = 1;
    else
        bc = 0;
    end
end