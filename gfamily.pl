male(narayan).
male(ganpat).
male(shree).
male(laxmikant).
male(sunil).
male(parth).

female(suman).
female(shailaja).
female(mansi).
female(smita).
female(madhura).
female(greeshma).
female(shubham).
female(anu).

parent(narayan,shree).
parent(narayan,laxmikant).
parent(suman,shree).
parent(suman,laxmikant).
parent(ganpat,mansi).
parent(ganpat,sunil).
parent(ganpat,smita).
parent(shailaja,mansi).
parent(shailaja,sunil).
parent(shailaja,smita).
parent(shree,madhura).
parent(laxmikant,greeshma).
parent(laxmikant,shubham).
parent(mansi,greeshma).
parent(mansi,shubham).
parent(sunil,parth).
parent(smita,anu).


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
