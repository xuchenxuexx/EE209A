function rc = rotatecheck(ag,a0,h)
    if ag-a0==0
        rc=0;           % return no rotation
    else
        if (h==2)||(h==8)||(h==5)||(h==11)
            rc=1;       % return turn left
        else
            rc = 2;     % return turn right
        end
    end
end