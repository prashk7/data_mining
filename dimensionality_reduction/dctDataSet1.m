data1 = dlmread('dist1_500_1.txt')
data2 = dlmread('dist1_500_2.txt')

dataSet1 = [data1;data2]
X = dct2(dataSet1);
[XX,ind] = sort(abs(X),'descend');
i = 1;
while norm(X(ind(1:i)))/norm(X) < 0.97  %Find how many DCT coefficients represent 97% of the energy in a sequence.
   i = i + 1;
end
needed = i

X(ind(needed+1:end)) = 0;
xx = idct2(X);  %Reconstructing the signal and compare it to the original signal.

plot([X;xx]')
legend('Original',['Reconstructed, N = ' int2str(needed)], ...
       'Location','SouthEast')