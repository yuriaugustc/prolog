segmento(L, S):-
	append(L, _, S).
segmento(L , [_|S]):-
	segmento(L, S).
