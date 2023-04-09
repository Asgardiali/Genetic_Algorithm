function [eniyicozum,eniyideger] = geneticAlgorithm(as, us, d, psize, pcross, pmutation, delta)
%GENET�CALGOR�THM Summary of this function goes here
%   psize: Pop�lasyon b�y�l���
%   as: ��z�mdeki de�erlerin alt s�n�r�
%   us: ��z�mdeki de�erlerin �st s�n�r�
%   d: Problem boyutu
%   obj: Ama� fonksiyonu
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

