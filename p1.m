function sn = p1(pe,s,a)
    L = 6;
    W = 6;
    xc = s(1)+1;
    yc = s(2)+1;
    hc = s(3);

    xn = 0;
    yn = 0;
    hn = 0;

    NS = zeros(W,L);                % size of S would be L * W * h

    NS(xc,yc) = hc;                   % assign current heading to current position

    sc = [xc yc hc];
    sn = [xn yn hn];

    NA = [0 1 2 3 4 5 6];            % action is either doing nothing or move forward/backward

    if a == 0                       % doing nothing
        sn = sc;
    elseif a == 1                   % moving forward and turn left
        hc = err(hc,pe);            % calculate whether pre-rotation error happen or not
        sc(3) = hc;
        d = dire(hc);               % calculate the direction robot is moving based on heading
        bc = boundcheck(sc(1),sc(2),d,W,L);
        if bc == 1
            hn = turnl(hc);
            sn = [sc(1) sc(2) hn];
        else
             sn = move(sc,d);
             hn = turnl(hc);
             sn = [sn(1) sn(2) hn];
        end
    elseif a == 2                   % moving forward and turn right
        hc = err(hc,pe);            % calculate whether pre-rotation error happen or not
        sc(3) = hc;
        d = dire(hc);            % calculate the direction
        bc = boundcheck(sc(1),sc(2),d,W,L);
        if bc == 1
            hc = turnr(hc);
            sn = [sc(1) sc(2) hc];        
        else
            sn = move(sc,d);
            hn = turnr(hc);
            sn = [sn(1) sn(2) hn];
        end
    elseif a == 3                   % moving forward and no turn
        hc = err(hc,pe);            % calculate whether pre-rotation error happen or not
        sc(3) = hc;
        d = dire(hc);               % calculate the direction
        bc = boundcheck(sc(1),sc(2),d,W,L);
        if bc == 1
            sn = sc;
        else
            sn = move(sc,d);
        end
    elseif a == 4                  % moving backward and turn left
        hc = err(hc,pe);            % calculate whether pre-rotation error happen or not
        sc(3) = hc;
        d = -1*dire(hc);            % calculate the direction
        bc = boundcheck(sc(1),sc(2),d,W,L);
        if bc == 1
            hn = turnl(hc);        
            sn = [sc(1) sc(2) hn];
        else
            sn = move(sc,d);
            hn = turnl(hc);
            sn = [sn(1) sn(2) hn];
        end
    elseif a == 5                  % moving backward and turn right
        hc = err(hc,pe);            % calculate whether pre-rotation error happen or not
        sc(3) = hc;
        d = -1*dire(hc);            % calculate the direction
        bc = boundcheck(sc(1),sc(2),d,W,L);
        if bc == 1
            hn = turnr(hc);        
            sn = [sc(1) sc(2) hn];
        else
            sn = move(sc,d);
            hn = turnr(hc);
            sn = [sn(1) sn(2) hn];
        end
    elseif a == 6                  % moving backward and no turn
        hc = err(hc,pe);            % calculate whether pre-rotation error happen or not
        sc(3) = hc;
        d = -1*dire(hc);
        bc = boundcheck(sc(1),sc(2),d,W,L);
        if bc == 1
            sn = sc;
        else
            sn = move(sc,d);
        end
    else
        disp('wrong action')
    end
    sn = [sn(1)-1 sn(2)-1 sn(3)];
end


        
    
        
        
    
    

