uniao(_, _, []).
uniao(P, Q, [R|S]):-
	member(R, P),
	uniao(P, Q, S).
uniao(P, Q, [R|S]):-
	member(R, Q),
	uniao(P, Q, S).