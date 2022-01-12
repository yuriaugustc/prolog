% EX4:

deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).

deTrem(metz,frankfurt).
deTrem(saarbruecken,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,paris).

deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(bangkok,auckland).
deAviao(losAngeles,auckland).

viagem(A, B):-
	deCarro(A, B).
viagem(A, C):-
	deCarro(A, B),
	viagem(B, C).
viagem(A, B):-
	deTrem(A, B).
viagem(A, C):-
	deTrem(A, B),
	viagem(B, C).
viagem(A, B):-
	deAviao(A, B).
viagem(A, C):-
	deAviao(A, B),
	viagem(B, C).
	