function [ arapop ] = crossOver(arapop, psize, pcross, d)
%CROSSOVER Summary of this function goes here
%   psize çift sayý olmasý çaprazlama için en uygundur.
%   randperm(n) n adet sayýyý tekrarsýz bir þekilde sýralar. Çýkan
%   sonuçlara bakarak çiftler seçilir.
%   pcross: Çaprazlama olasýlýðý 
%   Oluþturulan rassal olasýlýk deðerleri eðer çaprazlama olasýlýðýndan 
%   küçük ise çaprazlama yapýlýr fakat büyük ise çaprazlama yapýlmaz.

pairs = randperm(psize);

for i = 1:psize/2
    
    parent1idx = pairs(2*i-1);
    parent2idx = pairs(2*i);
    parent1 = arapop(parent1idx,:);
    parent2 = arapop(parent2idx,:);
    rs = unifrnd(0,1);
    
    % Çaprazlama yapabilmek için aþaðýdaki þartý saðlamasý gerekir. Aksi
    % takdirde çaprazlama iþlemi yapýlamayacaktýr.
    if(rs<pcross)
        % Çaprazlama noktasýný rastgele bulmak için "unidrnd" komutu
        % kullanýlarak elde edilir.
        crossPoint = unidrnd(d-1);        
        dummy = parent1(crossPoint+1:end);
        parent1(crossPoint+1:end) = parent2(crossPoint+1:end);
        parent2(crossPoint+1:end) = dummy;
        arapop(parent1idx,:) = parent1;
        arapop(parent2idx,:) = parent2;
        
    end
    
end





end

