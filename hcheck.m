function hh = hcheck(sc,sn,hceff,hneff)
    s_c = [sc(1)+1 sc(2)+1 sc(3)];
    s_n = [sn(1)+1 sn(2)+1 sn(3)];
    if ((hneff - hceff)== -1)||((hneff - hceff==11))        % if error happen and robot pre-rotate to left
        if (hceff==2)||(hceff==5)||(hceff==8)||(hceff==11)  % check numbers that pre-rotate will change the direction first
            if hceff == 2                               % original direction is +x and it's changed to +y due to pre-rotation
                if (s_n(2)-s_c(2)==1)&&(s_n(1)==s_c(1))
                    hh = 1;
                else
                    hh = 0;
                end
            elseif hceff == 5                           % original direction is -y and it's changed to +x due to pre-rotation                   
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 1;
                else
                    hh = 0;
                end
            elseif hceff == 8                           % original direction is -x and it's changed to -y due to pre-rotation
                if (s_n(2)-s_c(2)==-1)&&(s_n(1)==s_c(1))
                    hh = 1;
                else
                    hh = 0;
                end
            else                                        % original direction is +y and it's changed to -x due to pre-rotation
                if (s_n(1)-s_c(1)==-1)&&(s_n(2)==s_c(2))
                    hh = 1;
                else
                    hh = 0;
                end
            end
        else                                            % pre-rotation won't effect the direction
            if dire(hceff)==1                           % original direction is +y and keep going that direction
                if (s_n(2)-s_c(2)==1)&&(s_n(1)==s_c(1))
                    hh = 1;
                else
                    hh = 0;
                end
            elseif dire(hceff)==2                       % original direction is +x and keep going that direction
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 1;
                else
                    hh = 0;
                end
            elseif dire(hceff)==-1                      % original direction is -y and keep going that direction     
                if (s_n(2)-s_c(2)==-1)&&(s_n(1)==s_c(1))
                    hh = 1;
                else
                    hh = 0;
                end
            else                                        % original direction is -y and keep going that direction
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 1;
                else
                    hh = 0;
                end
            end
        end
    elseif ((hneff - hceff)== 1)||((hneff - hceff)==-11)        % if error happen and robot pre-rotate to right
        if hceff == (hceff==1)||(hceff==4)||(hceff==7)||(hceff==10)  % check numbers that pre-rotate will change the direction first
            if hceff == 1                               % original direction is +y and it's changed to +x due to pre-rotation
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 2;
                else
                    hh = 0;
                end
            elseif hceff == 4                           % original direction is +x and it's changed to -y due to pre-rotation                   
                if (s_n(2)-s_c(2)==-1)&&(s_n(1)==s_c(1))
                    hh = 2;
                else
                    hh = 0;
                end
            elseif hceff == 7                           % original direction is -y and it's changed to -x due to pre-rotation
                if (s_n(1)-s_c(1)==-1)&&(s_n(2)==s_c(2))
                    hh = 2;
                else
                    hh = 0;
                end
            else                                        % original direction is -x and it's changed to +y due to pre-rotation
                if (s_n(2)-s_c(2)==1)&&(s_n(1)==s_c(1))
                    hh = 2;
                else
                    hh = 0;
                end
            end
        else                                            % pre-rotation won't effect the direction
            if dire(hceff)==1                           % original direction is +y and keep going that direction
                if (s_n(2)-s_c(2)==1)&&(s_n(1)==s_c(1))
                    hh = 2;
                else
                    hh = 0;
                end
            elseif dire(hceff)==2                       % original direction is +x and keep going that direction
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 2;
                else
                    hh = 0;
                end
            elseif dire(hceff)==-1                      % original direction is -y and keep going that direction     
                if (s_n(2)-s_c(2)==-1)&&(s_n(1)==s_c(1))
                    hh = 2;
                else
                    hh = 0;
                end
            else                                        % original direction is -y and keep going that direction
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 2;
                else
                    hh = 0;
                end
            end
        end
    elseif hneff == hceff                               % there is no pre-rotation
        if dire(hceff)==1                               % original direction is +y and keep going that direction
                if (s_n(2)-s_c(2)==1)&&(s_n(1)==s_c(1))
                    hh = 3;
                else
                    hh = 0;
                end
            elseif dire(hceff)==2                       % original direction is +x and keep going that direction
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 3;
                else
                    hh = 0;
                end
            elseif dire(hceff)==-1                      % original direction is -y and keep going that direction     
                if (s_n(2)-s_c(2)==-1)&&(s_n(1)==s_c(1))
                    hh = 3;
                else
                    hh = 0;
                end
            else                                        % original direction is -y and keep going that direction
                if (s_n(1)-s_c(1)==1)&&(s_n(2)==s_c(2))
                    hh = 3;
                else
                    hh = 0;
                end
        end
    else
        hh = 0;
    end
end
        
                
                
                
                