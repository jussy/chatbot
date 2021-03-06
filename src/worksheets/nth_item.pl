/******************************************************************

nth_item(List, Position, Item).

Holds if the n-th item in the List is X.

******************************************************************/


nth_item([H|_], 1, H).

nth_item([_|T], N, X):-
	nth_item(T, N1, X),
	N is N1 + 1.


/******************************************************************

Output

| ?- nth_item([q,w,e,r], 3, e).
yes
| ?- nth_item([q,w,e,r], 2, X).
X = w ? ;
no
| ?- nth_item([q,w,e,r], N, r).
N = 4 ? ;
no
| ?- nth_item([X,Y,Z], 2, b).
Y = b ? ;
no
| ?- nth_item(L,3,a).
L = [_A,_B,a|_C] ? 


******************************************************************/

