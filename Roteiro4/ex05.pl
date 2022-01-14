separa_dup([], [], _, _).

separa_dup([H|T], K, P, Acum):-
	P is H,
	NovoAcum is Acum+1, 
	separa_dup(T, K, H, NovoAcum).
separa_dup(H, L, P, Acum):-
	Acum > 0,
	NovoAcum is Acum-1,
	separa_dup(T, [P|L], P, NovoAcum).
separa_dup([H|T], X):-
	separa_dup([H|T], X, H, 0).
	