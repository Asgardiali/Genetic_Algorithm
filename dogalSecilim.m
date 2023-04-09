function [arapop] = dogalSecilim(population, obj, psize)

% Rulet �ark� y�nteminde makimizasyonu elde eder.
% Bunu minimizasyona d�nd�rmek i�in ama� fonk de�erlerini tersine
% �eviriyoruz.

% cprob: Birikimli (Cumulative) olas�l�k
% probs: Hayatta kalma olas�l�klar�

obj = 1./obj;
sumObj = sum(obj);
probs = obj./sumObj;
cprobs = probs;

for i = 2:psize
    
    cprobs(i) = cprobs(i-1)+cprobs(i);
    
end

rs = unifrnd(0,1,[psize,1]);
arapop = population;

for i = 1:psize
    
    idx = find(rs(i)<cprobs,1);
    arapop(1,:) = population(idx,:);   
end




end








