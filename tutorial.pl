nat(zero).
nat(s(X)) :- nat(X).

fib(0).
fib(1).
fib(N) :-
    N >= 0,
    M is N-1,
    K is N-2,
    fib(M),
    fib(K),
    N is M + K.
% [1,2,3]
append_my([],Y,Y).
append_my([X|Y],K,[X|L]) :- append_my(Y,K,L).


my_reverse([],[]).
my_reverse([X|Y],L) :- my_reverse(Y,K),append_my(K,[X],L).

% 1 -> [1,2,2,3,1,7,8,2,1] -> [1,2,2,3,7,8,2]

remove_my(X,[],[]).
remove_my(X,[X|Y],L) :- remove_my(X,Y,L).
remove_my(X,[K|Y],L) :- X =\= K,remove_my(X,Y,L).






add_my(M,N,Z) :- Z is M + N.

