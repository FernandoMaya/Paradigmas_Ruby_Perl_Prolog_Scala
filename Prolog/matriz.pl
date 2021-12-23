
input(L,N, Filas):- (N > 0, N0 is N-1,nl,
           write('Posicion '),write(Filas-N0), read(V), append([V], L, F),
           input(F,N0, Filas))
           ;(asserta(matriz1(L)),true).

iterar(0,0).
iterar(Filas,Columnas):- (Filas > 0 , Filas0 is Filas-1,
                          input(_,Columnas,Filas),iterar(Filas0,Columnas));true.

mostrar([],0).
mostrar([A|B],Suma):- (B\= [],mostrar(B,Suma0),Suma is Suma0 + A)
                     ; Suma is A,true.
suma:- (matriz1(X),mostrar(X,Suma),((Suma \= 0, write(Suma),nl);true),fail );true.

menor([X], X) :- !.
menor([M|L], M) :- menor(L, M1), M =< M1, !.
menor([_|L], M1) :- menor(L, M1).

minimo:-(matriz1(X), menor(X,Y), write(Y), nl, fail);true.
sum:-(matriz1(X), mostrar(X,Y), write(Y),nl, fail);true.


borrar:-matriz1(X), retract(matriz1(X)),fail.
problema1:- write('Ingresa n '),read(N1),
     nl, write('Ingresa m '), read(N2),
     iterar(N1,N2),nl,
     write('el minimo de cada fila es '),nl, minimo,nl,
     write('la suma de cada fila es '),nl, sum, borrar.




problema2:-write('Ingresa 9 numeros'),nl,
                 read(N1), read(N2),read(N3), read(N4), read(N5),
                 read(N6), read(N7), read(N8), read(N9),
                 asserta(matriz2([[N1,N2,N3],[N4,N5,N6],[N7,N8,N9]]))
                 ,matriz2(X), ver(X),nl,nl, diagonal(X,_), borrar2.
borrar2:- matriz2(X), retract(matriz2(X)).

ver([]).
ver([A|B]):-(write(A),nl,ver(B)); true.

diagonal([],0).
diagonal([A|B],N):-diagonal(B,N0), N is N0+1,
                    write('['),reemplazo(A,N,_),write(']'),nl.

reemplazo([],_,0).
reemplazo([A|B], N,C):- reemplazo(B,N,C0), C is C0+1,
         ((N = C, write(0), write(','));(write(A),write(','))).


problema3:- for(5),!, ver3.

for(0).
for( N):-(N > 0,llenado(N), N0 is N -1 , for(N0)).
borrar3:-matriz3(X), retract(matriz3(X)), fail.

llenado(0).
llenado(L):-((L = 1; L = 5),asserta(matriz3([1,1,1,1,1])));
                ( (L \= 1, L \= 5),asserta(matriz3([1,0,0,0,1]))); true.
ver3:-matriz3(X), write(X), nl,fail.
