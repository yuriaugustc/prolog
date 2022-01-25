ordinal --> s.
ordinal(A, B, C):-
	s(B, A, C).
s(A, B, _) --> sn(B, A). % eu saquei oq eu tenho que fazer, só nao saquei como estruturar em uma DCG.
s --> sn.
	
sn --> n1.
sn --> n2.
sn --> n3.
sn --> n4.
sn --> n2, n1.
sn --> n3, n2.
sn --> n3, n1.
sn --> n3, n2, n1.

n1 --> [primeiro], [1].
n1 --> [segundo], [2].
n1 --> [terceiro], [3].
n1 --> [quarto], [4].
n1 --> [quinto], [5].
n1 --> [sexto], [6].
n1 --> [setimo], [7].
n1 --> [oitavo], [8].
n1 --> [nono], [9].

n2 --> [decimo], [1].
n2 --> [vingesimo], [2].
n2 --> [trigesimo], [3].
n2 --> [quadragesimo], [4].
n2 --> [quinquagesimo], [5].
n2 --> [sextuagesimo], [6].
n2 --> [septuagesimo], [7].
n2 --> [setuagesimo], [7].
n2 --> [octagesimo], [8].
n2 --> [nonagesimo], [9].

n3 --> [centesimo], [1].
n3 --> [ducentesimo], [2].
n3 --> [trecentesimo], [3].
n3 --> [tricentesimo], [3].
n3 --> [quadrigentesimo], [4].
n3 --> [quingentesimo], [5].
n3 --> [sexcentesimo], [6].
n3 --> [seiscentesimo], [6].
n3 --> [septingentesimo], [7].
n3 --> [setingentesimo], [7].
n3 --> [octingentesimo], [8].
n3 --> [noningentesimo], [9].
n3 --> [nongentesimo], [9].

n4 --> [milesimo], [1000].

