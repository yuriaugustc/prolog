romano(0,[]).
romano(X,['M'|Y]):-
 	X => 1000,
	Z is X-1000,
	romano(Z,Y).
romano(X,['C','M'|Y]):- 
	X => 900,
	Z is X-900,
	romano(Z,Y).
romano(X,['D'|Y]):-
	X => 500,
	Z is X-500,
	romano(Z,Y).
romano(X,['C','D'|Y]):-
	X => 400,
	Z is X-400,
	romano(Z,Y).
romano(X,['C'|Y]):-
	X => 100,
	Z is X-100,
	romano(Z,Y).
romano(X,['X','C'|Y]):-
	X => 90,
	Z is X-90,
	romano(Z,Y).
romano(X,['L'|Y]):-
	X => 50,
	Z is X-50,
	romano(Z,Y).
romano(X,['X','L'|Y]):-
	X => 90,
	Z is X-90,
	romano(Z,Y).
romano(X,['X'|Y]):-
	X => 10,
	Z is X-10,
	romano(Z,Y).
romano(X,['I','X'|Y]):-
	X => 9,
	Z is X-9,
	romano(Z,Y).
romano(X,['V'|Y]):-
	X => 5,
	Z is X-1000,
	romano(Z,Y).
romano(X,['I','V'|Y]):-
	X => 4,
	Z is X-4,
	romano(Z,Y).
romano(X,['I'|Y]):-
	X => 1,
	Z is X-1,
	romano(Z,Y).