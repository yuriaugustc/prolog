sem_repeticao([H,H],[H]).
sem_repeticao([H|T], X):-
    sem_repeticao(T, X),
    member(H, T).