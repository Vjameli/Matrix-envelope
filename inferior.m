    %resolve sistema linear de triangular inferior envelopada

%input dos 4 vetores do envelope e o vetor b
prompt1 = 'Insira o vetor DIAG = ';
prompt2 = 'insira o vetor ENV = ';
prompt3 = 'insira o vetor ENVCOL = ';
prompt4 = 'insira o vetor ENVLIN = ';
prompt5 = 'insira o vetor b = ';
DIAG =input(prompt1);
ENV = input(prompt2);
ENVC =input(prompt3);
ENVL =input(prompt4);
b = input(prompt5);
s = 0;
TL_aux = 0; 
[~,n] = size(DIAG);
x(1)= (b(1)-s)/DIAG(1);
for i = 2:n    
    s=0;    
    TL = ENVL(i+1)-ENVL(i);     
    k=0; 
    if TL ~= 0 
        for j = ENVC(TL_aux + 1):ENVC(TL_aux +TL) 
            s = s + ENV(TL_aux +1 + k)*x(j);
            k = k +1;
        end
        TL_aux = TL_aux + TL; 
    end
    x(i)= (b(i)-s)/DIAG(i);
end
x