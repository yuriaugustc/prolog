nesimo(1, [L|_],L).


ultimo(X,[X]).
ultimo(X,[_|T]):-
	ultimo(X, T).

somatorio([X], Acumulador, Soma):-
	Soma is Acumulador + X.
somatorio([H|T], Acumulador, Soma):-
	NovoAcumulador is Acumulador+H,
	somatorio(T, NovoAcumulador, Soma).
somatorio(L, Soma):-
	somatorio(L, 0, Soma).


removeTodos([], _, []).
removeTodos([X|T], X, L):-
	removeTodos(T, X, L).
