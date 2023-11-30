% Facts about family relationships
male(vishnu).
male(ram).
male(yogesh).
female(parvati).
female(jyoti).
female(siddhi).
parent(vishnu, ram).
parent(vishnu, parvati).
parent(ram, yogesh).
parent(jyoti, siddhi).
parent(parvati, jyoti).

% Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

grandfather(X, Y) :- father(X, Z), parent(Z, Y).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).

sister(X, Y) :- female(X), sibling(X, Y).
brother(X, Y) :- male(X), sibling(X, Y).
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W).
