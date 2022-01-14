replica([], _, [], 0).
replica([H|T], X, L, Acum):-
	Acum < X,
	NovoAcum is Acum+1,
	replica([H|T], X, [H|L], NovoAcum),
	replica(T, X, L, 0).
replica(X, R, L):-
	replica(X, R, L, 0).

% consegui fazer ele replicar, mas nao consigo fazer ele parar a recursao e pular para o proximo.