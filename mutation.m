function [ arapop ] = mutation(arapop, pmutation, psize, d, delta, us, as)
%MUTATÝON Summary of this function goes here
%   pmutation: Mutasyon olasýlýðý
%   Mutasyon olasýlýðý çok düþütür.
%   Mutasyon uðratmak için çok küçük bir sayý ya eklenir yada çýkarýlýr.
%   Mutasyon iþleminde toplama yada çýkartma iþlemi için rassal sayýlar
%   kullanýlmalýdýr.
%   delta: Komþuluk birimi(Küçük bir artýrým azaltým)

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

