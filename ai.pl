male(Namdeo).
male(Mahesh).
male(Ravi).
male(Suhas).
male(Prathamesh).
male(Sarth).
male(Shantanu).
male(Yogesh).
male(Akash).

female(Neelam).
female(Swati).
female(Vandana).
female(Poonam).
female(Rupa).
female(Sonali).
female(Himani).

parent(Namdeo,Mahesh).
parent(Namdeo,Suhas).
parent(Vandana,Mahesh).
parent(Vandana,Suhas).
parent(Ravi,Neelam).
parent(Ravi,Poonam).
parent(Ravi,Rupa).
parent(Swati,Neelam).
parent(Swati,Poonam).
parent(Swati,Rupa).
parent(Mahesh,Prathamesh).
parent(Neelam,Prathamesh).
parent(Suhas,Sarth).
parent(Sonali,Sarth).
parent(Poonam,Himani).
parent(Shantanu,Himani).
parent(Yogesh,Akash).
parent(Rupa,Akash).


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