male(ankush).
male(damodar).
male(vinayak).
male(rupesh).
male(vedant).
male(tanuj).

female(nirmala).
female(ganga).
female(shilpa).
female(shambha).
female(vedant).
female(manali).

parent(ankush,rupesh).
parent(ankush,vinayak).
parent(damodar,shilpa).
parent(damodar,shambha).
parent(nirmala,rupesh).
parent(nirmala,vinayak).
parent(ganga,shilpa).
parent(ganga,shambha).


parent(rupesh,manali).
parent(vinayak,vedant).
parent(shilpa,vedant).
parent(shambha,tanuj).

mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
haschild(X):- parent(X,_).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.

grandparent(X,Y):-parent(X,Z),parent(Z,Y).
grandmother(X,Z):-mother(X,Y),parent(Y,Z).
grandfather(X,Z):-father(X,Y),parent(Y,Z).
wife(X,Y):-parent(X,Z),parent(Y,Z),female(X),male(Y).
uncle(X,Z):-brother(X,Y),parent(Y,Z).
aunty(X,Z):-sister(X,Y),parent(Y,Z).