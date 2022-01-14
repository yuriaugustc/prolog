% Só nao sei como estruturar o caso base mesmo.
ocorrencias( X, [L|M], N, Acum):-
	L =:= X,
	NovoAcum is Acum+1,
	ocorrencias(X, M, N, NovoAcum),
	N =:= Acum.
ocorrencias(X, [L|M], N, Acum):-
	ocorrencias(X, M, N, Acum).
ocorrencias(X, M, N):-
	ocorrencias(X, M, N, 0).