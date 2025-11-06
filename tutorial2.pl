istree(nil).
istree(tree(X,T1,T2)) :- istree(T1), istree(T2).

construct_btree(X,nil,tree(X,nil,nil)).
construct_btree(X,tree(Y,Lt,Rt),tree(Y,Ltchanged,Rt)) :-
   X >= Y ,construct_btree(X,Lt,Ltchanged).
construct_btree(X,tree(Y,Lt,Rt),tree(Y,Lt,Rtchanged)) :-
    X < Y,construct_btree(X,Rt,Rtchanged).

construct([],nil).
construct([X|Y],T) :- construct(Y,T1),construct_btree(X,T1,T).


% Towers of Hanoi
move(1,A,B,_) :-
    write("Move top disk from"),write(A),write(" to "),write(B).
move(N, A,B,C) :-
    N > 1,
    M is N - 1,
    move(M ,A,C,B),move(1,A,B,_),move(M,C,B,A).
