a = [1 2 3; 4 5 6; 7 8 9; 10 11 12];

b = [1 2 3 4 5; 6 7 8 9 10; 11 12 13 14 15];

[m,p] = size(a);
[p,n] = size(b);

%PROGRAMA

for i = 1:m
    aux = zeros(1,n);
    for k = 1:p
        for j = 1:n
            aux(j) = aux(j) + a(i,k)*b(k,j);
        end
    end
    c(i,:) = aux
end

%CONDIÇÃO
if c == a*b
    fprintf('TÁ CERTO POOORRAA');
end


