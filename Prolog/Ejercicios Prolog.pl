problema1:- write("Ingresa el primer numero con un punto al final: "), read(N1),
    write("Ingresa el segundo numero con un punto al final: "), read(N2),
    write("Ingresa el tercer numero con un punto al final: "), read(N3),
    write("Ingresa el cuarto numero con un punto al final: "), read(N4),
    asserta(array([N1,N2,N3,N4])),
    array(X),
    imprimir(X,_),
    suma(X,Suma), write("la suma es "), write(Suma),nl,
    mul(X,Multi), write("la multiplicacion es "), write(Multi),nl,
    divi(Suma,Divi), write("la division sobre 2 es "), write(Divi),nl,
    exp(Suma,Exp), write("y su exponente 3 es "), write(Exp).


suma([],0).
suma([A|B],Y):- suma(B,Y0), Y is Y0 + A.

mul([],0).
mul([A|B],Y):- (B \= [],mul(B,Yo),Y is A * Yo); Y is 1 * A.

divi(S,D):- D is S /2.

exp(X,Z) :- Z is X * X * X .


longitud([],0).
longitud([_|T],N):-longitud(T,N0), N is N0 + 1.

imprimir([],0).
imprimir([A|B],N):-imprimir(B,N0), N is N0 +1,write('numero: '), write(A), write('--> posicion: '),array(X),longitud(X,L),Lon is L-N,write(Lon),nl.

problema2:-write('Escribe un cumple para buscar '), read(F), buscar(F).

alumnos(job,       278791, 20, 14-02-99).
alumnos(ale,       278792, 19, 2-07-00).
alumnos(kenny,     278793, 21, 14-02-98).
alumnos(raul,      278794, 20, 14-02-99).
alumnos(jaime,     278795, 21, 2-07-00).
alumnos(luis, 278796, 19, 14-02-99).
alumnos(sousa,     278797, 40, 1-12-80).

buscar(F):-  alumnos(N,Ex,Ed,F), write('Alumno '), write(N), write(' con expediente '), write(Ex), write(' Tiene '), write(Ed), write(' años'), nl, fail.

% Se requiere un algoritmo para obtener un vector (C) de N elementos que
% contenga la suma y multiplicacion de los elementos correspondientes de
% otros dos vectores (A y B).
%
% El vector C será el de la suma, el D para la multiplicacion.

problema3:- write('Ingresa la cantidad de elementos que agregaras '), read(N),nl, guardarA(N),write('Ahora del arreglo b '),nl, guardarB(N), suma,mul,borrar,true.
guardarA(0).
guardarA(N):- (N > 0, N0 is N-1,nl,write('Pon el valor '),write(N),read(V), asserta(a(V)) , guardarA(N0)),true.


guardarB(0).
guardarB(N):- (N > 0, N0 is N-1,nl,write('Pon el valor '),write(N),read(V), asserta(b(V)), guardarB(N0)),true.

suma:- (a(X), b(Y),Sum is X + Y, asserta(c(X+Y, Sum)),nl,fail); true.
mul:- (a(X), b(Y),Mul is X * Y, asserta(d(X*Y, Mul)),nl,fail); true.

borrar:- (a(X), retract(a(X)), nl, fail);(b(Y), retract(b(Y)), nl, fail);(c(Z,K), retract(c(Z,K)), nl, fail);true.

problema4:- trabajadores(X), iterar(X,Y),
            nl,write('La empresa pago un total de '), write(Y),
            nl,write('El que trabajo mas el lunes fue '),best(B), write(B), write(--), nombre(X,B,N),write(N).
trabajadores([
              [juan, 6, 6, 5, 9, 6, 5, 30],
              [jose, 8, 8, 8, 8, 8, 8, 20],
              [pedro, 8, 6, 7, 9, 9, 8, 45],
              [pablo, 6, 4, 0, 6, 9, 6, 30],
              [pepe, 8, 8, 7, 8, 8, 9, 100]
             ]).
horas([],0,0,,).
horas([Ca|Co],N,S,Nombre,Pago):- horas(Co,N0,S0,_,Pago0), N is N0+1,
                    (
                      (N \= 1, N \= 8, S is Ca + S0, Pago is Pago0);
                      (N == 1, S is 0, Pago is Ca);
                      (N == 8, S is S0, Pago is Pago0, Nombre = Ca) ;
                       true
                    ).
iterar([],0).
iterar([Tn|Ts],Total):- horas(Tn,_,S,Nombre,Pago),nl,
                  write('Trabajador '),write(Nombre),write(' trabajo '),write(S),
                  write(' horas con un sueldo esta semana de '),Semana is Pago * S, write(Semana),
                  iterar(Ts,Total0), Total is Semana + Total0.

t(Y):- trabajadores(Y).

best(J):-          t([ [,T1|] |_]),
                   t([, [,T2|] |]),
                   t([,, [,T3|] |_]),
                   t([,,, [,T4|] |]),
                   t([,,,, [,T5|] ]),max_lista([T1,T2,T3,T4,T5],X), J is X.
max_lista([X],X).
max_lista([X1,X2|L],Y) :- X3 is max(X1,X2), max_lista([X3|L],Y).

nombre([],0,0).
nombre([[N0,Ca|_]|Co],B,N):- (Ca == B, N = N0, !); nombre(Co,B,N).

