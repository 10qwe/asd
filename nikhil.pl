male(mohan) .
male(mangesh) .
male(harshad) .
male(ulhas) .
male(nikhil).
male(akshay) .

female(vijaya) .
female(prathiba) .
female(sabina) .
female(mansi) . 

parent(mohan, mangesh) .
parent(mohan, harshad) .
parent(vijaya, mangesh) .
parent(vijaya, ankesh) .
parent(ulhas, sabina) .
parent(vijaya, sabina) .
parent(ankesh, akshay) .
parent(mangesh, akshay) .
parent(mangesh, nikhil) .
parent(sabina, akshay) .
parent(sabina, nikhil) .

mother(X,Y) :- parent(X,Y) , female(X).
father(X,Y) :- parent(X,Y) , male(X).
brother(X,Y) :- father(Z, X) ,father(Z, Y) , male(Y).
uncle(X,Y) :- male(X), father(A,Y), siblings(A, X).
aunt(X,Y) :- female(X), parent(Z,Y), siblings(Z, A), spouse(A,X).
siblings(X,Y) :- father(Z,X), father(Z,Y), X\==Y.
spouse(X,Y) :- parent(X,A), parent(Y,A).
has_child(X) :- parent(X,_) .
