function aset = VI(gamma,pe)
    v = zeros(6,6,12);
    a = 0;
    vpre = v;
            for b=0:5                                
                for c=0:5
                    for d=0:11
                        temp = 0;
                        for i=0:5
                            for j=0:5
                                for k = 0:11
                                    temp = temp + psa([b c d],[i j k],pe,a)*(reward([b c d])+gamma*vpre(i+1,j+1,k+1));
                                end
                            end
                        end
                        v(b+1,c+1,d+1) = temp;
                    end
                end
            end
    ct = 0;
    aset=zeros(6,6,12);
    delta = 0.001;
    for z = 0:20
        vpre=v;
    for b = 0:5
        for c = 0:5
            for d = 0:11
                for a = 0:6
                    temp = 0;
                    for i = 0:5
                        for j = 0:5
                            for k = 0:5
                                 temp = temp + psa([b c d],[i j k],pe,a)*(reward([b c d])+gamma*vpre(i+1,j+1,k+1));
                            end
                        end
                    end
                    if temp>=vpre(b+1,c+1,d+1)
                        aset(b+1,c+1,d+1)=a;
                        v(b+1,c+1,d+1)=temp;
                    else
                        aset = aset;
                        v = v;
                    end
                    delta = max(abs(v(b+1,c+1,d+1)-vpre(b+1,c+1,d+1)),delta);
                end
            end
        end
    end
    delta = delta;
    ct = ct+1;
    if delta <= 2
        break
    end
    delta = 0;
    end
end
                    
                                