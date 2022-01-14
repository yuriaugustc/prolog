sem_repeticao([],[]).
sem_repeticao([H|T], X):-
    member(H, T),
    sem_repeticao(T, X).
sem_repeticao([H|T], [H|X]) :-
 sem_repeticao(T,X).