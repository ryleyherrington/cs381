
/* Exercise 1 */
when(275,10).
when(261,12).
when(381,11).
when(398,12).
when(399,12).

where(275,owen102).
where(261,dear118).
where(381,cov216).
where(398,dear118).
where(399,cov216).

enroll(mary,275).
enroll(john,275).
enroll(mary,261).
enroll(john,381).
enroll(jim,399).


/*1a*/
schedule(N,P,T) :- when(C,T), where(C,P), enroll(N,C).

/*1b*/
usage(P,T) :- where(C,P), when(C,T).

/*1c*/
conflict(X,Y) :- when(X,T), where(X,P), when(Y,T), when(Y,P), X\=Y.

/*1d*/
meet(X,Y) :- enroll(X,Z), when(Z,A), enroll(Y,W), when(W,B), X\=Y, A=:=B-1.

/* Exercise 2 */



/*
project([],[],[]).
project([],[_],[_]).
project(L1,[_],[_]).
project([],[],[],N).
project([],[_],[_],N).
project(L1,[_],[_],N).
project(L1,L2,L3) :- N is 0, project(L1,L2,L3,N).
project([X|L1],[L|L2],[L|L3],N) :- N=:=X-1, project(L1,L2,L3,N+1).
project([L1],[L|L2],L3,N) :- project(L1,L2,L3,N+1).
*/
