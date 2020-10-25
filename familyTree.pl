%RULES
/*A is grandchild of C*/
grandchild(A, C) :- parent(B, A), parent(C, B).
/*A is great grand parent of D*/
greatgrandparent(A, D) :- parent(C, D), parent(B, C), parent(A, B).

/*A is ancestor of B*/
ancestor(A, B) :- parent(A, B).
ancestor(A, B) :- parent(A, X), ancestor(X, B).

/*X is daughter/son of Y*/
daughter(X, Y) :- parent(Y, X), female(X).
son(X, Y) :- parent(Y, X), male(X).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), not(X = Y).

/*A is brother of B*/
brother(A, B) :- male(A), sibling(A, B).
brother_in_law(A, B) :-  spouse(B, X), brother(A, X).

%FACTS
male(george).
male(philip).
male(charles).
male(mark).
male(andrew).
male(edward).
male(harry).
male(william).
male(peter).
male(louise).
male(james).

female(mum).
female(elizabeth).
female(margaret).
female(diana).
female(anne).
female(sarah).
female(sophie).
female(zara).
female(beatrice).
female(eugenie).

%parent(parent, child)
parent(george, elizabeth).
parent(george, philip).
parent(mum, elizabeth).
parent(mum, philip).

parent(elizabeth, diana).
parent(elizabeth, charles).
parent(philip, diana).
parent(philip, charles).

parent(elizabeth, anne).
parent(elizabeth, mark).
parent(philip, anne).
parent(philip, mark).

parent(elizabeth, andrew).
parent(elizabeth, sarah).
parent(philip, andrew).
parent(philip, sarah).

parent(elizabeth, edward).
parent(elizabeth, sophie).
parent(philip, edward).
parent(philip, sophie).

parent(george, margaret).
parent(mum, margaret).

parent(diana, william).
parent(charles, william).
parent(diana, harry).
parent(charles, harry).

parent(anne, peter).
parent(anne, zara).
parent(mark, peter).
parent(mark, zara).

parent(andrew, beatrice).
parent(andrew, eugenie).
parent(sarah, beatrice).
parent(sarah, eugenie).

parent(edward, louise).
parent(edward, james).
parent(sophie, louise).
parent(sophie, james).

%spouse(wife, husband) or spouse(husband, wife)
% The relation is reciprocal, so if X is spouse of Y, then Y is also
% spouse of X which can be added below.
spouse(george, mum).
spouse(spencer, kydd).
spouse(elizabeth, philip).
spouse(diana, charles).
spouse(anne, mark).
spouse(andrew, sarah).
spouse(edward, sophie).




