function v = VEs(gamma,pe)
    v = zeros(6,6,12);
    delta = 0;
    ct = 0;
    while(1)
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
                        delta = max(abs(v(b+1,c+1,d+1)-vpre(b+1,c+1,d+1)),delta);
                    end
                end
            end
            ct = ct + 1;            
            if delta <=0.01
                break
            end
            delta = 0;
    end
end
                        
                                    
                                
                        