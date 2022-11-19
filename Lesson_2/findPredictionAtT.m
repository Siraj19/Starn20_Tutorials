function quantityT = findPredictionAtT(quantityT0, quantityT1, deltaT, T)
%First find the value of k
%Changing population from quantity 0 to quantity 1 in deltaT time.
k = log(quantityT1/quantityT0)/deltaT;
quantityT = quantityT0 * exp(k*T);
end