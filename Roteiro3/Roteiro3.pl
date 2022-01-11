traducao(uno, um).
traducao(due, dois).
traducao(tre, tres).
traducao(quattro, quatro).
traducao(cinque, cinco).
traducao(sei, seis).
traducao(sette, sete).
traducao(otto, oito).
traducao(nove, nove).

traduz_lista([],[]).

traduz_lista([I|A], [P|T]):-
    traducao(I,P),
    traduz_lista([A],[T]).

concat([], L, L).    
concat(H, T, X):-
    X is [H, T].

tresVezes([], []).
tresVezes([X|T], P, Lista):-
    P is [X,X,X],
    NovaLista is append(Lista,P),
    tresVezes([T], P, NovaLista).
tresVezes(X,P):-
    tresVezes(X, P, []).

intercala1([], [_], X):-
    X is [[],[_]].
intercala1([X|Y],[H|T], X):-
    Lista is [X,H].