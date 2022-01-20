s(A-C):-
	sn(A-B),
	sv(B-C).
sn(A-C):-
	det(A-B),
	n(B-C). 
sv(A-C):- 
	v(A-B), 
	sn(B-C). 
sv(A-C):- 
	v(A-C).
	det([o|P]-P).           
det([a|P]-P).

n([homem|P]-P).    
n([mulher|P]-P).      
n([bola|P]-P).
v([chuta|P]-P). 

% Rastreamento

[trace]  ?- s([o,homem,chuta,o,homem]-[ ]).
   Call: (10) s([o, homem, chuta, o, homem]-[]) ? creep
   Call: (11) sn([o, homem, chuta, o, homem]-_19434) ? creep
   Call: (12) det([o, homem, chuta, o, homem]-_20190) ? creep
   Exit: (12) det([o, homem, chuta, o, homem]-[homem, chuta, o, homem]) ? creep
   Call: (12) n([homem, chuta, o, homem]-_19434) ? creep
   Exit: (12) n([homem, chuta, o, homem]-[chuta, o, homem]) ? creep
   Exit: (11) sn([o, homem, chuta, o, homem]-[chuta, o, homem]) ? creep
   Call: (11) sv([chuta, o, homem]-[]) ? creep
   Call: (12) v([chuta, o, homem]-_24708) ? creep
   Exit: (12) v([chuta, o, homem]-[o, homem]) ? creep
   Call: (12) sn([o, homem]-[]) ? creep
   Call: (13) det([o, homem]-_26970) ? creep
   Exit: (13) det([o, homem]-[homem]) ? creep
   Call: (13) n([homem]-[]) ? creep
   Exit: (13) n([homem]-[]) ? creep
   Exit: (12) sn([o, homem]-[]) ? creep
   Exit: (11) sv([chuta, o, homem]-[]) ? creep
   Exit: (10) s([o, homem, chuta, o, homem]-[]) ? creep