function p = psa(sc,sn,pe,a)

    if a == 0                       % no motion is taken
        if sn == sc
            p = 1;
        else
            p = 0;
        end
    elseif a == 1                  % moving forward and turn left
        hceff = sc(3);
        [ph phc] = psaboundcheck(sc,sn,pe,a);
        if phc == 1
            p = ph;
        else
            if sn(3)==11
                hneff = 0;
            else
                hneff = sn(3)+1;
            end
            hh = hcheck(sc,sn,hceff,hneff);
            if (hh == 1)||(hh == 2)
                p = pe;
            elseif hh == 3
                p = 1 - 2*pe;
            else
                p = 0;
            end
        end
    elseif a == 2                   % moving forward and turn right
        hceff = sc(3);
        [ph phc] = psaboundcheck(sc,sn,pe,a);
        if phc == 1
            p = ph;
        else
            if sn(3)==0
                hneff = 11;
            else
                hneff = sn(3)-1;
            end
            hh = hcheck(sc,sn,hceff,hneff);
            if (hh == 1)||(hh == 2)
                p = pe;
            elseif hh == 3
                p = 1 - 2*pe;
            else
                p = 0;
            end
        end
    elseif a == 3                   % moving forward and no turn
        hceff = sc(3);
        hneff = sn(3);
        [ph phc] = psaboundcheck(sc,sn,pe,a);
        if phc == 1
            p = ph;
        else
            hh = hcheck(sc,sn,hceff,hneff);
            if (hh == 1)||(hh == 2)
                p = pe;
            elseif hh == 3
                p = 1 - 2*pe;
            else
                p = 0;
            end
        end
    elseif a == 4                   % moving backward and turn left
        if sc(3)>=0&&sc(3)<=5
            hceff = sc(3)+6;
        else
            hceff = sc(3)-6;
        end
        if sn(3)>=0&&sn(3)<=5
            hneff = sn(3)+6;
        else
            hneff = sn(3)-6;
        end
        [ph phc] = psaboundcheck(sc,sn,pe,a);
        if phc == 1
            p = ph;
        else
            if hneff==11
                hneff = 0;
            else
                hneff = hneff+1;
            end
            hh = hcheck(sc,sn,hceff,hneff);
            if (hh == 1)||(hh == 2)
                p = pe;
            elseif hh == 3
                p = 1 - 2*pe;
            else
                p = 0;
            end
        end
    elseif a == 5                   % moving backward and turn right
        if sc(3)>=0&&sc(3)<=5
            hceff = sc(3)+6;
        else
            hceff = sc(3)-6;
        end
        if sn(3)>=0&&sn(3)<=5
            hneff = sn(3)+6;
        else
            hneff = sn(3)-6;
        end
        [ph phc] = psaboundcheck(sc,sn,pe,a);
        if phc == 1
            p = ph;
        else
            if hneff==0
                hneff = 11;
            else
                hneff = hneff-1;
            end
            hh = hcheck(sc,sn,hceff,hneff);
            if (hh == 1)||(hh == 2)
                p = pe;
            elseif hh == 3
                p = 1 - 2*pe;
            else
                p = 0;
            end
        end
    elseif a == 6                   % moving backward and no turn
        if sc(3)>=0&&sc(3)<=5
            hceff = sc(3)+6;
        else
            hceff = sc(3)-6;
        end
        if sn(3)>=0&&sn(3)<=5
            hneff = sn(3)+6;
        else
            hneff = sn(3)-6;
        end
        [ph phc] = psaboundcheck(sc,sn,pe,a);
        if phc == 1
            p = ph;
        else
            hh = hcheck(sc,sn,hceff,hneff);
            if (hh == 1)||(hh == 2)
                p = pe;
            elseif hh == 3
                p = 1 - 2*pe;
            else
                p = 0;
            end
        end
    else
        p = 0;
    end
end
        
            