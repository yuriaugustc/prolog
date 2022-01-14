soma_acum([], [], _).
soma_acum([H|T], [M|K], Acum):-
    M is H+Acum,
    soma_acum(T, K, M).
soma_acum(T, K):-
    soma_acum(T, K, 0).