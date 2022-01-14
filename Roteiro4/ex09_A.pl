disjunto([], []).
disjunto([X|T], [H|L]):-
	X =\= H,
	disjunto(T, L).
	