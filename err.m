function hc = err(hc,pe)
    p = rand;
    if p>=0 && p<=pe
        if hc == 11
            hc = 0;
        else
            hc = hc +1;
        end
        err = 1;
        
    elseif p>pe && p<(2*pe)
        if hc == 0;
            hc = 11;
        else
            hc = hc - 1;
        end
        err = 2;
    else
        hc = hc;
        err = 0;
    end
end
        
    
    