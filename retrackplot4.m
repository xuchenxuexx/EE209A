function retrackplot4(s,pe)

    sn = s;
    xg = 4;
    yg = 5;
    xlist = [s(1)];
    ylist = [s(2)];
    ct = 0;

    for i = 1:10
        if (sn(1)==xg)&&(sn(2)==yg)     % when we reach our goal
            xlist = [xlist sn(1)-1];
            ylist = [ylist sn(2)-1];
            break
        else                            % when we are sitll moving
            ct = ct+1
            aset = VI(0.9,pe);
            a = aset(sn(1)+1,sn(2)+1,s(3)+1);
            sn = p1(pe,sn, a);
            xlist = [xlist sn(1)];
            ylist = [ylist sn(2)];
        end
    end
    
    plot(xlist,ylist)                   % plot track
    axis([0 5 0 5])
end