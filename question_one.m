%resolve sistema linear de triangular superior envelopada

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


%começando o programa:

%Defino TCaux, que acumula com TC pra
%percorrer o vetor ENV corretamente

TC_aux = 0; 
[~,n] = size(DIAG);
[~,TE] = size(ENV); %TE é o tamanho de Env

s = zeros(n,1); %variável acumuladora do sistema, cujo último elemento é 0 pra não atrapalhar em j=n

for j = n:-1:1
    x(j)= (b(j)-s(j))/DIAG(j); 
    
    TC = ENVC(j+1)-ENVC(j); %TC é o tamanho da coluna j no envelope
    
    k=0; %variável que faz percorrer o vetor env em cada coluna
    
    if TC ~= 0 %Se TC =0, não temos coluna para percorrer 
        
        for i = ENVL(TE - TC - TC_aux):ENVL(TE - TC_aux -1) %Laço limitado pelo vetor ENVL, indexado da mesma maneira que o vetor ENV
            s(i) = s(i) + ENV(TE - TC - TC_aux + k)*x(j);
            k = k +1;
        end
        TC_aux = TC_aux + TC; %TC_aux acumula com TC, pra contar as colunas que já passamos quando pecorremos ENV
    end
end


