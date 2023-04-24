male(ramesh) .
male(rupesh) .
male(ankesh) .
male(ashok) .
male(yash).
male(arjun) .

female(shanti) .
female(malti) .
female(dimple) .
female(shranya) . 

parent(ramesh, rupesh) .
parent(ramesh, ankesh) .
parent(shanti, rupesh) .
parent(shanti, ankesh) .
parent(ashok, dimple) .
parent(shanti, dimple) .
parent(ankesh, arjun) .
parent(rupesh, arjun) .
parent(rupesh, yash) .
parent(dimple, arjun) .
parent(dimple, yash) .

mother(X,Y) :- parent(X,Y) , female(X).
father(X,Y) :- parent(X,Y) , male(X).
brother(X,Y) :- father(Z, X) ,father(Z, Y) , male(Y).
uncle(X,Y) :- male(X), father(A,Y), siblings(A, X).
aunt(X,Y) :- female(X), parent(Z,Y), siblings(Z, A), spouse(A,X).
siblings(X,Y) :- father(Z,X), father(Z,Y), X\==Y.
spouse(X,Y) :- parent(X,A), parent(Y,A).
has_child(X) :- parent(X,_) .
