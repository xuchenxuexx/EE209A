function aset = pi0set()
    for i = 0:5
        for j = 0:5
            for k = 0:11
                aset(i+1,j+1,k+1)=pi0([i j k]);
            end
        end
    end
end