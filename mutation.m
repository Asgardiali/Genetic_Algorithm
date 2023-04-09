function [ arapop ] = mutation(arapop, pmutation, psize, d, delta, us, as)
%MUTAT�ON Summary of this function goes here
%   pmutation: Mutasyon olas�l���
%   Mutasyon olas�l��� �ok d���t�r.
%   Mutasyon u�ratmak i�in �ok k���k bir say� ya eklenir yada ��kar�l�r.
%   Mutasyon i�leminde toplama yada ��kartma i�lemi i�in rassal say�lar
%   kullan�lmal�d�r.
%   delta: Kom�uluk birimi(K���k bir art�r�m azalt�m)

rs = unifrnd(0,1,[psize d]);
 
for i = 1:psize
    
    for j = 1:d
        
        if(rs(i,j)<pmutation)
            
            rs2 = unifrnd(-1,1);
            arapop(i,j) = arapop(i,j)+rs2*delta*(us-as);
            
        end
        
    end
    
end






end

