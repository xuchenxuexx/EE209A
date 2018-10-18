function a = pi0(s)
    xg = 4;
    yg = 5;
    L = 6;
    W = 6;
    x = s(1)+1;
    y = s(2)+1;
    h = s(3);
    
    if (h>=2&&h<=4)||(h>=8&&h<=10)      % when we can only move in +-x direction
        if (xg-x==0)                 % when we are in the same x with goal
            rc = rotatecheck(yg,y,s(3));
            if rc ==0                   % we are also in the same y with goal
                a = 0;                  % return no motion             
            elseif rc == 1              % when rc is not equal to 0, we always choose forward then decide if we need to make a turn or not
                a = 1;                  % we need to go farward and turn left
            else                    
                a = 2;                  % we need to go forward and turn right
            end
        elseif xg-x>0                % when we are on the left of goal
            if h>=2&&h<=4               % we are towarding +x so we move forward here
                rc = rotatecheck(yg,y,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 3;              % go forward and no rotation             
                elseif rc == 1         
                    a = 1;              % we need to go farward and turn left
                else
                    a = 2;              % we need to go forward and turn right
                end
            else                        % we are facing -x and we need move backward
                rc = rotatecheck(yg,y,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 6;              % go backward and no rotation            
                elseif rc == 1         
                    a = 4;              % we need to go backward and turn left
                else
                    a = 5;              % we need to go backward and turn right
                end
            end
        else                            % we are on the right of goal
            if h>=2&&h<=4               % we are towarding +x so we move backward here
                rc = rotatecheck(yg,y,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 6;              % go backward and no rotation            
                elseif rc == 1         
                    a = 4;              % we need to go backward and turn left
                else
                    a = 5;              % we need to go backward and turn right
                end
            else                        % we are facing -x and we need move forward
                rc = rotatecheck(yg,y,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 3;              % go forward and no rotation             
                elseif rc == 1         
                    a = 1;              % we need to go farward and turn left
                else
                    a = 2;              % we need to go forward and turn right
                end
            end
        end
    else                                % when we can only move in +-y direction
        if (yg-y==0)                 % when we are in the same y with goal
            rc = rotatecheck(xg,x,s(3));
            if rc ==0                   % we are also in the same x with goal
                a = 0;                  % return no motion             
            elseif rc == 1              % when rc is not equal to 0, we always choose forward then decide if we need to make a turn or not
                a = 1;                  % we need to go farward and turn left
            else                    
                a = 2;                  % we need to go forward and turn right
            end
        elseif yg-y>0                % when we are under the goal
            if (h==0)||(h==1)||(h==11)          % we are towarding +y so we move forward here
                rc = rotatecheck(xg,x,s(3));
                if rc ==0               % we are in the same x with goal
                    a = 3;              % go forward and no rotation             
                elseif rc == 1         
                    a = 1;              % we need to go farward and turn left
                else
                    a = 2;              % we need to go forward and turn right
                end
            else                        % we are facing -y and we need move backward
                rc = rotatecheck(xg,x,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 6;              % go backward and no rotation            
                elseif rc == 1         
                    a = 4;              % we need to go backward and turn left
                else
                    a = 5;              % we need to go backward and turn right
                end
            end
        else
            if (h==0)||(h==1)||(h==11)               % we are towarding +y so we move backward here
                rc = rotatecheck(xg,x,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 6;              % go backward and no rotation            
                elseif rc == 1         
                    a = 4;              % we need to go backward and turn left
                else
                    a = 5;              % we need to go backward and turn right
                end
            else                        % we are facing -y and we need move forward
                rc = rotatecheck(xg,x,s(3));
                if rc ==0               % we are in the same y with goal
                    a = 3;              % go forward and no rotation             
                elseif rc == 1           
                    a = 1;              % we need to go farward and turn left
                else
                    a = 2;              % we need to go forward and turn right
                end
            end
        end
    end
end
                
                
                
                
                
            
                