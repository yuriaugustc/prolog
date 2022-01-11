soma_acum([K], [K], 0).
soma_acum([H|T], [M|K], Acum):-
    M is H+Acum,
    soma_acum(T, K, H).
soma_acum(T, K):-
    soma_acum(T, K, 0).