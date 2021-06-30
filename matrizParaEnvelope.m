function [DIAG, ENVS, ENVcolS, ENVlinS, ENVI, ENVcolI, ENVlinI]= matrizParaEnvelope(A)
    n=size(A,1);
    DIAG=zeros(1,n); ENVcolS=zeros(1,n+1); ENVlinI=zeros(1,n+1);
    ENVS=zeros(1,1); ENVI=zeros(1,1);
    ENVlinS=zeros(1,1); ENVcolI=zeros(1,1);
    cs=1; ci=1;
    ks=0; ki=0;
    ENVcolS(1)=1; ENVcolS(2)=1;
    ENVlinI(1)=1; ENVlinI(2)=1;
    for j=1:n
        DIAG(j)=A(j,j);
        ss=0;
        si=0;
        for i=1:(j-1)
            if(A(i,j)~=0)
                ss=1;
            end
            if(ss==1)
                cs=cs+1;
                ks=ks+1;
                ENVS(ks)=A(i,j);
                ENVlinS(ks)=i;
            end
            ENVcolS(j+1)=cs;
            if(A(j,i)~=0)
                si=1;
            end
            if(si==1)
                ci=ci+1;
                ki=ki+1;
                ENVI(ki)=A(j,i);
                ENVcolI(ki)=i;
            end
            ENVlinI(j+1)=ci;
        end
    end
    
    ENVS = [ENVS 0];
    ENVlinS = [ENVlinS 0];

    ENVI = [ENVI 0];
    ENVcolI = [ENVcolI 0];
    
    if (size(ENVS,2) == 2)
        if (ENVS == [0 0])
            ENVS = [0];
            ENVlinS = [0];
        end
    end
    
    if (size(ENVI,2) == 2)
        if (ENVI == [0 0])
             ENVI = [0];
            ENVcolI = [0];
        end
    end
    
end
