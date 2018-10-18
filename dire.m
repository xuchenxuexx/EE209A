function d = dire (hc) 
    if (hc==11)||(hc==0)||(hc==1)
        d = 1;                 % +y direction 
    elseif (hc==2)||(hc==3)||(hc==4)
        d = 2;                 % +x direction
    elseif (hc==5)||(hc==6)||(hc==7)
        d = -1;                 % -y direction
    elseif (hc==8)||(hc==9)||(hc==10)
        d = -2;                 % -x direction
    else
        disp('wrong direction')
    end
end
        