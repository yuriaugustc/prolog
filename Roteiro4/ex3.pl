sem_repeticao([],[]).
sem_repeticao([H|T], X):-
    member(H, T),
    sem_repeticao(T, X).