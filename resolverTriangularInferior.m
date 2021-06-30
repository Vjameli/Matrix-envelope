function solutionVector = resolverTriangularInferior(DIAG, ENV_inf, ENVlin_inf, ENVcol_inf, b)
    
    s = 0;
    TL_aux = 0; 
    [~,n] = size(DIAG);
    x = zeros(n,1);
    x(1)= (b(1)-s)/DIAG(1);

    for i = 2:n    

        s=0;    
        TL = ENVlin_inf(i+1)-ENVlin_inf(i);     
        k=0; 

        if TL ~= 0 

            for j = ENVcol_inf(TL_aux + 1):ENVcol_inf(TL_aux +TL) 

                s = s + ENV_inf(TL_aux +1 + k)*x(j);
                k = k +1;

            end

            TL_aux = TL_aux + TL; 

        end

        x(i)= (b(i)-s)/DIAG(i);

    end

    solutionVector = x;
    
end