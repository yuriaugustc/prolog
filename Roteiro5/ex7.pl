s --> foo,bar,wiggle.
foo --> [chu].
foo --> foo,foo.
bar --> mar,zar.
mar --> me,my.
me --> [eu].
my --> [sou].
zar --> blar,car.
blar --> [um].
car --> [trem].
wiggle --> [tchu].
wiggle --> wiggle,wiggle.

/*
?- s(X,[]).
X = [chu, eu, sou, um, trem, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu] .
*/