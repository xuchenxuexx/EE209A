function v = VEsa(gamma,pe,a,s)
    vpre = VEs(gamma,pe);
    v = 0;
    for i=0:5
        for j = 0:5
            for k=0:11
                v = v + psa(s,[i j k],pe,a)*(reward(s)+gamma*vpre(i+1,j+1,k+1));
            end
        end
    end
end
    