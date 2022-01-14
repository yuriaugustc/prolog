tresVezes([], Saida, NovaSaida):-
	Saida is append(NovaSaida, []).
tresVezes([E|N], Saida, NovaSaida):-
	Saida is [E,E,E],
	append(NovaSaida, Saida),	
	tresVezes(N, Saida, NovaSaida).
tresVezes(X, L):-
	tresVezes(X, L, []).