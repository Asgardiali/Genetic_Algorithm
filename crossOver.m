function [ arapop ] = crossOver(arapop, psize, pcross, d)
%CROSSOVER Summary of this function goes here
%   psize �ift say� olmas� �aprazlama i�in en uygundur.
%   randperm(n) n adet say�y� tekrars�z bir �ekilde s�ralar. ��kan
%   sonu�lara bakarak �iftler se�ilir.
%   pcross: �aprazlama olas�l��� 
%   Olu�turulan rassal olas�l�k de�erleri e�er �aprazlama olas�l���ndan 
%   k���k ise �aprazlama yap�l�r fakat b�y�k ise �aprazlama yap�lmaz.

pairs = randperm(psize);

for i = 1:psize/2
    
    parent1idx = pairs(2*i-1);
    parent2idx = pairs(2*i);
    parent1 = arapop(parent1idx,:);
    parent2 = arapop(parent2idx,:);
    rs = unifrnd(0,1);
    
    % �aprazlama yapabilmek i�in a�a��daki �art� sa�lamas� gerekir. Aksi
    % takdirde �aprazlama i�lemi yap�lamayacakt�r.
    if(rs<pcross)
        % �aprazlama noktas�n� rastgele bulmak i�in "unidrnd" komutu
        % kullan�larak elde edilir.
        crossPoint = unidrnd(d-1);        
        dummy = parent1(crossPoint+1:end);
        parent1(crossPoint+1:end) = parent2(crossPoint+1:end);
        parent2(crossPoint+1:end) = dummy;
        arapop(parent1idx,:) = parent1;
        arapop(parent2idx,:) = parent2;
        
    end
    
end





end

