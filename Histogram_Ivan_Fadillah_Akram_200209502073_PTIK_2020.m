Citra_3_bit = [1 3 4 5; 1 2 1 1; 3 3 4 7; 2 1 1 7];

% Histogram
[n m] = size(Citra_3_bit);
H  = zeros(1,256);
for  x = 1 : n
    for y = 1: m
      ii = Citra_3_bit(x,y);
      H(ii+1) = H(ii+1) +1;
    end
end
figure(1)
grid on
bar(0:255,H);
axis([0 10 0 10])

% Distribusi Komulatif
for w = 1: 256
    c(w) = sum(H(1:w));
end
figure(2)
bar(0:255,c)
grid on
axis([0 10 0 m*n])
