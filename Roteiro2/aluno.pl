aluno(paulo,poo).
aluno(pedro,poo).
aluno(maria,pl).
aluno(rui,pl).
aluno(manuel,pl).
aluno(pedro,pl).
aluno(rui,ed1).

estuda(paulo).
estuda(maria).
estuda(manuel).

cursapl(X):-
	aluno(X,pl), 
	estuda(X).