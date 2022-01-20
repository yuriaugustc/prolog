s(C):- 
	sn(A), 
	sv(B), 
	append(A,B,C).

sn(C):- 
	det(A), 
	n(B), 
	append(A,B,C).
sv(C):- 
	v(A), 
	sn(B), 
	append(A,B,C).
sv(C):- 
	v(C).

det([o]).     
det([a]).

n([homem]).     
n([mulher]).      
n([bola]).

v([chuta]).

% rastreamento

[trace]  ?- det(X).
   Call: (10) det(_18266) ? creep
   Exit: (10) det([o]) ? creep
X = [o] .

[trace]  ?- n(X).
   Call: (10) n(_22292) ? creep
   Exit: (10) n([homem]) ? creep
X = [homem] .

[trace]  ?- v(X).
   Call: (10) v(_26318) ? creep
   Exit: (10) v([chuta]) ? creep
X = [chuta].