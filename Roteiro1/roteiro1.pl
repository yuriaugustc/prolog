% EX01
pai(abraham, homer).
pai(abraham, helbert).
pai(abraham, abbey).
pai(homer, maggie).
pai(homer, lisa).
pai(homer, bart).
pai(clancy, marge).
pai(clancy, selma).
pai(clancy, marge).
pai(clancy, patty).
mae(marge, maggie).
mae(marge, lisa).
mae(marge, bart).
mae(mona, homer).
mae(jacqueline, marge).
mae(jacqueline, selma).
mae(jacqueline, patty).
mae(selma, ling).
homem(abraham).
homem(helbert).
homem(homer).
homem(bart).
homem(clancy).
mulher(mona).
mulher(abbey).
mulher(maggie).
mulher(lisa).
mulher(jacqueline).
mulher(marge).
mulher(selma).
mulher(patty).
mulher(ling).

% EX02
% pai(X, marge).
% pai(X,Y).
% pai(X,lisa), pai(Y, X).
% mae(X,lisa), pai(Y, X).

% EX03
avo(X,Y):-
	pai(X,Z),
	pai(Z,Y).
mesmoPai(X,Y):-
	pai(Z,X),
	pai(Z,Y).

% EX04
filho(X,Y):-
	pai(Y,X),
	homem(X).
filho(X,Y):-
	mae(Y,X),
	homem(X).
filha(X,Y):-
	pai(Y,X),
	mulher(X).
filha(X,Y):-
	mae(Y,X),
	mulher(X).
irmao(X,Y):-
	pai(Z,X),
	pai(Z,Y),
	homem(X).
irma(X,Y):-
	pai(Z,X),
	pai(Z,Y),
	mulher(X).
irmaos(W,X,Y):-
	pai(Z,W),
	pai(Z,X),
	pai(Z,Y).
tio(X,Y):-
	homem(X),
	pai(Z,Y),
	irmao(X,Z).
tio(X,Y):-
	homem(X),
	mae(Z,Y),
	irmao(X,Z).
tia(X,Y):-
	mulher(X),
	pai(Z,Y),
	irma(X,Z).
tia(X,Y):-
	mulher(X),
	mae(Z,Y),
	irma(X,Z).
primo(X,Y):-
	homem(X),
	pai(Z, X),
	tio(Z,Y).
primo(X,Y):-
	homem(X),
	pai(Z, X),
	tia(Z,Y).
primo(X,Y):-
	homem(X),
	mae(Z, X),
	tio(Z,Y).
primo(X,Y):-
	homem(X),
	mae(Z, X),
	tia(Z,Y).
prima(X,Y):-
	mulher(X),
	pai(Z, X),
	tio(Z,Y).
prima(X,Y):-
	mulher(X),
	pai(Z, X),
	tia(Z,Y).
prima(X,Y):-
	mulher(X),
	mae(Z, X),
	tio(Z,Y).
prima(X,Y):-
	mulher(X),
	mae(Z, X),
	tia(Z,Y).

% Base de conhecimento para EX5 ao EX9

:- dynamic feiticeiro/1.

elfo_domestico(dobby).

bruxo(hermione).
bruxo('McGonagall').
bruxo(rita_skeeter).

magico(X):- 
	elfo_domestico(X).
magico(X):- 
	feiticeiro(X).
magico(X):-
	bruxo(X).

% EX05
% magico(elfo_domestico). false. Para ter true como resultado, seria necessario inserir Dobby ao inves de elfo_domestico;

% EX06
% magico(harry). false. Seria necessario instanciar harry como bruxo para que essa consulta retornasse true. bruxo(harry);

% EX07
% magico(feiticeiro). false. Para ter true como resultado, seria necessario inserir hermione,'McGonagall' ou rita_skeeter ao inves de feiticeiro;

% EX08
% magico('McGonagall'). true.

% EX09
% magico(Hermione). false. Note que hermione está denotado com 'H' na consulta, mas na base de conhecimento está escrito com 'h'.

% Arvore de busca:
%						magico(Hermione)
%								|
%		feiticeiro(X), elfo_domestico(X), bruxo(X).
%			/					|				\
%		   ?			   X = dobby			X = hermione, 
%												X = 'McGonagall', 
%												X = rita_skeeter.
			
f(a).
f(b).

g(a).
g(b).

k(X):- f(X), g(X), h(X).

palavra(artigo,uma).
palavra(artigo,qualquer). %'qualquer' ́e um pronome, mas deixaremos assim.
palavra(nome,pessoa).
palavra(nome,'sopa de legumes').
palavra(verbo,come).
palavra(verbo,adora).
sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5) :-
	palavra(artigo,Palavra1),
	palavra(nome,Palavra2),
	palavra(verbo,Palavra3),
	palavra(artigo,Palavra4),
	palavra(nome,Palavra5).

% EX10
% sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5).

% EX11
% uma pessoa come uma pessoa.
% uma pessoa come uma 'sopa de legumes'
% uma pessoa come qualquer pessoa
% uma pessoa come qualquer 'sopa de legumes'
% uma pessoa adora uma pessoa
% uma pessoa adora uma 'sopa de legumes'
% uma pessoa adora qualquer pessoa
% uma pessoa adora qualquer 'sopa de legumes'
% uma 'sopa de legumes' come uma pessoa
% uma 'sopa de legumes' come uma 'sopa de legumes'
% uma 'sopa de legumes' come qualquer pessoa
% uma 'sopa de legumes' come qualquer 'sopa de legumes'
% uma 'sopa de legumes' adora uma pessoa
% uma 'sopa de legumes' adora uma 'sopa de legumes'
% uma 'sopa de legumes' adora qualquer pessoa
% uma 'sopa de legumes' adora qualquer 'sopa de legumes'
% qualquer pessoa come uma pessoa
% qualquer pessoa come uma 'sopa de legumes'
% qualquer pessoa come qualquer pessoa
% qualquer pessoa comer qualquer 'sopa de legumes'
% qualquer pessoa adora uma pessoa
% qualquer pessoa adora uma 'sopa de legumes'
% qualquer pessoa adora qualquer pessoa
% qualquer pessoa adora qualquer 'sopa de legumes'
% qualquer 'sopa de legumes' come uma pessoa
% qualquer 'sopa de legumes' come uma 'sopa de legumes'
% qualquer 'sopa de legumes' come qualquer pessoa
% qualquer 'sopa de legumes' come qualquer 'sopa de legumes'
% qualquer 'sopa de legumes' adora uma pessoa
% qualquer 'sopa de legumes' adora uma 'sopa de legumes'
% qualquer 'sopa de legumes' adora qualquer pessoa
% qualquer 'sopa de legumes' adora qualquer 'sopa de legumes'

% EX12
% Apesar de utilizar o predicado consult e em seguida o listing, nao consegui encontrá-los na base de conhecimento, por mais que fossem reconhecidos.

% EX13
% aluno(paulo,pl).
% false.

% EX14
% aluno(rui,poo).
% false.

% EX15
% aluno(paulo,ed10), aluno(maria, ed1).
% false.

% EX16
% aluno(X, ed1).
% X = rui.

% EX17
% aluno(rui, X).
% X = pl ;
% X = ed1.

% EX18
% aluno(maria,pl), estuda(maria).
% true.

% EX19
% Esta pesquisa permite saber quais sao os alunos cursando a disciplina Prolog, sabendo que para cursar a disciplina o aluno precisa estar estudando.

% EX20
% cursapl(X):-
%	aluno(X,pl), 
%	estuda(X).