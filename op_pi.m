function aset = op_pi(gamma,pe)
    aset = zeros(6,6,12);
    for i=0:5
        for j=0:5
            for k=0:11
                aset(i+1,j+1,k+1) = pi0([i j k]);
            end
        end
    end
    vpre = VEs(gamma,pe); 
    for b=0:5;
        for c=0:5;
            for d=0:11
                for a=0:6
                    temp = 0;
                    for i=0:5
                        for j = 0:5
                            for k=0:11
                                temp = temp + psa([b c d],[i j k],pe,a)*(reward([b c d])+gamma*vpre(i+1,j+1,k+1));
                            end
                        end
                    end
                    if temp>=vpre(b+1,c+1,d+1)
                        aset(b+1,c+1,d+1)=a;
                        vpre(b+1,c+1,d+1)=temp;
                    else
                        aset = aset;
                        vpre = vpre;
                    end
                end
            end
        end
    end
end
                    
                                