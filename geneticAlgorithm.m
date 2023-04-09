function [eniyicozum,eniyideger] = geneticAlgorithm(as, us, d, psize, pcross, pmutation, delta)
%GENETÝCALGORÝTHM Summary of this function goes here
%   psize: Popülasyon büyülüðü
%   as: Çözümdeki deðerlerin alt sýnýrý
%   us: Çözümdeki deðerlerin üst sýnýrý
%   d: Problem boyutu
%   obj: Amaç fonksiyonu
%   

population = unifrnd(as,us,[psize, d]);
iteration = 1;

eniyideger = 100000000;


while(iteration<50)
    
    obj = zeros(psize,1);

    for i=1:psize
    
        obj(i) = sum(population(i,:).^2);
    
    end
    
    if (min(obj)<eniyideger)
        
        eniyideger = min(obj);
        idx = find(obj == eniyideger);
        eniyicozum = population(idx,:);
        
    end
    

    [ arapop ] = dogalSecilim(population, obj, psize);
    [ arapop ] = crossOver(arapop, psize, pcross, d);
    population = mutation(arapop, pmutation, psize, d, delta, us, as);
    
    iteration = iteration+1;
    
    
end


end

