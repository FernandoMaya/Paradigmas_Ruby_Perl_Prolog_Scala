:-write("Escribe prog(X). y sustituye X por el numero del problema"),
    write("No olvides pones un punto al final"),nl
    ,nl,write("1 factorial del 1 al 7"),
    nl,write("2 Tabla de n * m"),
    nl,write("3 Piramide sencilla"),
    nl,write("4 Piramide perrona").
inicio():-write("Escribe prog(X). y sustituye X por el numero del problema"),
    write("No olvides pones un punto al final"),nl
    ,nl,write("1 factorial del 1 al 7"),
    nl,write("2 Tabla de n * m"),
    nl,write("3 Piramide sencilla"),
    nl,write("4 Piramide perrona").


%///////////////////Calculo del factorial
numero(0,1).
numero(N,F):-N > 0,
             Y is(N-1),              %N = 1
             write(N),               %Y = N-1 (0)
             write("*"),             %numero = 1 * (0)
             numero(Y,F1),
             F is N*F1.


fact(1).
fact(X):- I is X-1,
          numero(I,Y),
          write("="),
          write(Y),nl,
          fact(I),
          I>0.

%/////////////////////////////////////////
%//////////////////////Tabla de n * m
columna(0,1).
columna(Y,Z):- Y > 0,
               L is Y-1,
               write(Z),
               columna(L,Z).

fila(0,1,2).
fila(X,Y,Z):- X>0,
              A is X-1,(
              columna(Y,Z);
              nl,fila(A,Y,Z)).

# /////////////////////////////////////
%//////////////////Piramide 1
p1C(0,1).
p1C(X,L):-   L =< X,
             write(" "),
             write(L),
             M is L+1,
             p1C(X,M).


p1F(1).
p1F(X):-  I is X-1,(
          p1C(I,1);
          nl,
          p1F(I),
          I > 0).


%///////////////////////////////////////
%//////////////////Piramide 2
p2C(0,1).
p2C(X,L):- L =< X,
           write(" "),
           write(L),
           LL is L+1,
           p2C(X,LL)
           .

p2F(1).
p2F(X,L):-  L =< X,(
          p2C(L,1);
          nl,
          LL is L+1,
          p2F(X,LL)).

%//////////////////////////////////////////////
tabla(X,Y,Z):- (fila(X,Y,Z);nl, inicio()).


piramide1(X):- Y is X+1,p1F(Y),nl, inicio().

% Piramide 2 utiliza sus 2 funcionas para generar la parte superior
% Posteriormente se llama a piramide 1 para reutilizar codigo ;v
piramide2(X):- Z is X-1,p2F(Z,1); Y is X+1,p1F(Y),nl,inicio().

prog(X):- X = 1, fact(8),nl,inicio().
prog(X):- X = 2, write("Escribe tabla(X,Y,Z). y sustituye por filas, columnas y simbolo a imprimir").
prog(X):- X = 3, write("Escribe piramide1(X). y sustituye X por el numero").
prog(X):- X = 4, write("Escribe piramide2(X). y sustituye X por un numero").
