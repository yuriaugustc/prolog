% Letra A:
sobre(caneca, mesa).
sobre(vidro, mesa).
sobre(lapis, vidro).
sobre(base, mesa).
sobre(elefante, base).
sobre(novelo, elefante).
sobre(sorvete, novelo).
sobre(maca, sorvete).
sobre(hipopotamo1, maca).
sobre(hipopotamo2, hipopotamo1).
sobre(cupcake, hipopotamo2).

% Letra B:
acima_de(A,B):-
	sobre(A,B).
acima_de(A,C):-
	sobre(A,B),
	acima_de(B,C).

% Letra C:

% acima_de(cupcake,mesa).
% true.

% Letra D:

% acima_de(lapis,mesa).
% true.

% Letra E:

% acima_de(X,novelo).
% X = sorvete ;
% X = maca ;
% X = hipopotamo1 ;
% X = hipopotamo2 ;
% X = cupcake ;

% Letra F:

% acima_de(X,caneca).
% false.

% Letra G:

abaixo_de(A,B):-
	acima_de(B,A).

% Letra H:
% abaixo_de(X,cupcake).
% X = hipopotamo2 ;
% X = hipopotamo1 ;
% X = maca ;
% X = sorvete ;
% X = novelo ;
% X = elefante ;
% X = base ;
% X = mesa ;
false.

% Letra I:
% abaixo_de(X,lapis).
% X = vidro ;
% X = mesa ;
% false.

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

% EX 3:

conectado(1,2).
conectado(3,4).
conectado(5,6).
conectado(7,8).
conectado(9,10).
conectado(12,13).
conectado(13,14).
conectado(15,16).
conectado(17,18).
conectado(19,20).
conectado(4,1).
conectado(6,3).
conectado(4,7).
conectado(6,11).
conectado(14,9).
conectado(11,15).
conectado(16,12).
conectado(14,17).
conectado(16,19).

caminho(A, B):-
	conectado(A, C).
caminho(A, C):-
	conectado(A, B),
	caminho(B, C). 

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

% EX5:

viagem(A, B, vai_de(A, B, )):-
	

