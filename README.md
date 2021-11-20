# Matrix-envelope
This is the first project of the numerical analysis discipline, offered by IMECC - UNICAMP in the first semester of 2020

More information about it and its implementation can be found at “report.pdf”, in Portuguese.

There is a slight mistake in the “major_routine.mlx”, where we expanded the A matrix. It will be corrected soon.

The aim of this project is to investigate the behavior of sparse matrices, which have a large amount of null inputs. To do this, we look at a way to store arrays in memory in a way that reduces the space used by the program, called envelopes.


Example of storing the envelope in a triangular matrix:
<p align="center">
<img src="https://github.com/MatheusAraujoSouza/MS512-Numerical-Analysis-I-projects/blob/main/captura1.png" width="700" height="200"/> 

Once the method is understood, we sought with this project to answer the following questions:

1)Write an algorithm to solve the linear system Ux = b, U ∈ IR ^ (n × n), b ∈ IRn by reverse substitution assuming the matrix U is upper triangular and stored according to the column envelope structure.

2) For matrix A, specify the column-oriented envelope for its upper triangular portion and the row-oriented envelope for its lower triangular portion, making, in this second case, the adaptations in the definition and in the index vectors corresponding to the rows and columns.

Example of matrix A ∈ R^(7 × 7): 
<p align="center">
<img src="https://github.com/MatheusAraujoSouza/MS512-Numerical-Analysis-I-projects/blob/main/matriA2.png" width="300" height="200"/> 


3) Assuming that the LU factorization of A ∈ R^(n × n) is well defined, show that the envelope of L (by rows) is equal to the envelope of the lower triangular part of A, and that the envelope of U (by columns) coincides with the envelope from the upper triangular portion of A.

4) Expand the previous item, assuming now partial pivoting, so that PA = LU, where P ∈ R^ (n × n) permutation matrix. Assuming the matrix P is known, shows that the result of the previous item applies to the envelopes of L and U, regarding the envelopes of the lower and upper triangular portions of PA, respectively.

5) To solve the system Ax = b, assume that the permutation matrix P is known a priori, so you will handle with PAx = Pb. Adapt the Gauss elimination algorithm studied in Numerical Calculus to construct the factors L and U such that PA = LU, working with the envelopes of the lower (by rows) and upper (by columns) triangular portions of PA. The triangular matrices L and U must be stored in envelopes, oriented by rows and columns, correspondingly.

6) The following figure shows a flat structure, called a truss, with 13 bars (numbered as shown), connected by 8 nodes (numbered with circles). There are loads (in tons) applied to nodes 2, 5 and 6, and the goal is to determine the forces acting on each of the truss bars.

<p align="center">
<img src="https://github.com/MatheusAraujoSouza/MS512-Numerical-Analysis-I-projects/blob/main/estrutura.png"/> 

following strength settings:
  
<p align="center">
<img src="https://github.com/MatheusAraujoSouza/MS512-Numerical-Analysis-I-projects/blob/main/forces%20.png"/> 

