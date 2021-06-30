function solutionVector =  resolverTriangularSuperior(DIAG, ENV_sup, ENVcol_sup, ENVlin_sup, b)
    %DIAG ten dimensão (1xn)
    %ENV_sup tem dimensão TE -> último elemento é a primeira posição vazia, precisa existir e ser preechida com zero -> SÓ PODE EXISTIR UMA POSIÇÃO LIVRE (A PRIMEIRA)
    %ENVcol_sup tem dimensão (1x(n+1)) -> primeiro elemento é 1 e último elemento é o índice da posição livre em ENV_sup
    %ENVlin_sup tem mesma dimensão de ENV_sup, O ÚLTIMO ELEMENTO É ZERO E REPRESENTA A POSIÃO LIVRE DE ENV -> PRECISA EXISTIR

    TC_aux = 0; 
    [~,n] = size(DIAG);
    [~,TE] = size(ENV_sup); 

    s = zeros(n,1); 
    x = zeros(n,1);

    for j = n:-1:1

        x(j)= (b(j)-s(j))/DIAG(j); 

        TC = ENVcol_sup(j+1)-ENVcol_sup(j); 

        k=0; 

        if TC ~= 0 

            for i = ENVlin_sup(TE - TC - TC_aux):ENVlin_sup(TE - TC_aux -1) 

                s(i) = s(i) + ENV_sup(TE - TC - TC_aux + k)*x(j);
                k = k +1;

            end

            TC_aux = TC_aux + TC; 

        end
    end

    solutionVector = x;

end
