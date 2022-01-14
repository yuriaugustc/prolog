intersecao( _, _, []).
intersecao(P, Q, [R|S]):-
	member(R,P),
	member(R,Q),
	intersecao(P,Q,S).