ocorre(L, [L], 1, _).
ocorre(X,[L|M], N, Acum):-
	Acum < N,
	NovoAcum is Acum+1,
	ocorre(X, M, N,NovoAcum).
ocorre(X, [L|M], N, Acum):-
	L =:= X,
	N =:= Acum.
ocorre(X, L, N):-
	ocorre( X, L, N, 1).