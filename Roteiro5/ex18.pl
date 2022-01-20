/*
?- display(12 is 2*6).
is(12,*(2,6))              
true.
// true.

?- display(14 =\= 2*6).
=\=(14,*(2,6))
true.
// true.

?- display(14 = 2*7).
=(14,*(2,7))                  
true.
// false.

?- display(14 == 2*7).         
==(14,*(2,7))                 
true.
// false.

?- display(14 \== 2*7).
\==(14,*(2,7))                 
true.
// true.

?- display(14 =:= 2*7).
=:=(14,*(2,7))                 
true.
// true.

?- display([1,2,3|[d,e]] == [1,2,3,d,3]).
==([1,2,3,d,e],[1,2,3,d,3])     
true.
// false.

?- display(2+3 == 3+2).
==(+(2,3),+(3,2))               
true.
// false.

?- display(2+3 =:= 3+2).
=:=(+(2,3),+(3,2))              
true.
// true.

?- display(7-2 =\= 9-2).
=\=(-(7,2),-(9,2))              
true.
// true.

?- display(p = 'p').
=(p,p)                      
true.
// true.

?- display(p =\= 'p').
=\=(p,p)               
true.
// false.

?- display(vicente == VAR).
==(vicente,_4978)           
true.
// false.

?- display(vicente = VAR, VAR == vicente).
>ERROR: Domain error: `stream_or_alias' expected, found `vicente=_6676'
ERROR: In:
ERROR:    [9] write_term(vicente=_6730,_6734==vicente,[quoted(true),...])
ERROR:    [7] <user>
ERROR: 
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.
 // true.
*/