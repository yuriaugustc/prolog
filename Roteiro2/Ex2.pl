% EX2:

% Letra A:

proximo_posto(soldado, taifeiro).
proximo_posto(taifeiro, cabo).
proximo_posto(cabo, terceiro-sargento).
proximo_posto(terceiro-sargento, segundo-sargento).
proximo_posto(segundo-sargento, primeiro-sargento).
proximo_posto(primeiro-sargento, subtenente).
proximo_posto(subtenente, aspirante).
proximo_posto(aspirante, segundo-tenente).
proximo_posto(segundo-tenente, primeiro-tenente).
proximo_posto(primeiro-tenente, capitao).
proximo_posto(capitao, major).
proximo_posto(major, tenente-coronel).
proximo_posto(tenente-coronel, coronel).
proximo_posto(coronel, general-de-brigada).
proximo_posto(general-de-brigada, general-de-divisao).
proximo_posto(general-de-divisao, general-de-exercito).
proximo_posto(general-de-exercito, marechal).

% Letra B:
militar(soldado, zero).
militar(soldado, platao).
militar(soldado, dentinho).
militar(soldado, cosme).
militar(soldado, roque).
militar(soldado, quindim).
militar(soldado, blips).
militar(cabo, ky).
militar(terceiro-sargento, cuca).
militar(segundo-sargento, tainha).
militar(primeiro-sargento, 'louise lorota').
militar(segundo-tenente, escovinha).
militar(primeiro-tenente, mironga).
militar(capitao, durindana).
militar(major, peroba).
militar(general-de-exercito, 'amos dureza').

% Letra C:

menor_patente(A,B):-
	proximo_posto(A,B).
menor_patente(A,C):-
	proximo_posto(A,B),
	menor_patente(B,C).

% Letra D:

maior_patente(A, B):-
	menor_patente(B, A).

% Letra E:

subordinado(A, B):-
	militar(X, A),
	militar(Y, B),
	menor_patente(X, Y).

% Letra F:

% subordinado(zero, tainha).
% true.

% Letra G:

% subordinado(mironga, X).
% X = durindana ;
% X = peroba ;
% X = 'amos dureza' ;