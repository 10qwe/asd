male(philipose).
male(cherian).
male(mathews).
male(karunakar).
male(anil).
male(noel).
male(karan).

female(annamma).
female(mariamma).
female(kavita).
female(mini).
female(grace).
female(carol).
female(anu).

parent(philipose,mathews).
parent(philipose,karunakar).
parent(annamma,mathews).
parent(annamma,karunakar).
parent(cherian,kavita).
parent(cherian,anil).
parent(cherian,mini).
parent(mariamma,kavita).
parent(mariamma,anil).
parent(mariamma,mini).
parent(mathews,grace).
parent(karunakar,karan).
parent(karunakar,carol).
parent(kavita,karan).
parent(kavita,carol).
parent(anil,noel).
parent(mini,anu).

father(X,Y) :- parent(X,Y),male(X).
mother(X,Y) :- parent(X,Y),female(X).
has_child(X) :- parent(_,X).
grandFather(X,Y):- parent(Z,Y),parent(X,Z),male(X).
grandMother(X,Y):- parent(Z,Y),parent(X,Z),female(X).
brother(X,Y) :- parent(Z,X),parent(Z,Y),male(X),male(Y).
sister(X,Y) :-  parent(Z,X),parent(Z,Y),female(X).
sibling(X,Y) :- parent(Z,X),parent(Z,Y),male(Z),X \= Y.
cousin(X,Y) :- parent(Z,X),parent(K,Y),Z \= K,(X\=Y),(sibling(Z,K)).
uncle(X,Y) :- parent(Z,Y),sibling(Z,X),male(X).
aunt(X,Y) :- parent(Z,Y),sibling(Z,X),female(X).

