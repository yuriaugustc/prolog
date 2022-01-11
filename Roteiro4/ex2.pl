soma_ate(0, 0, 0).
soma_ate(K, S, Acum):-
    S is K+Acum,
    soma_ate(K-1, S, Acum).
soma_ate(K, S):-
	soma_ate(K, S, 0).