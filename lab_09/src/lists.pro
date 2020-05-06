domains
	list = integer*.
	index = integer.

predicates
	length(list, integer).
	sum(list, integer).
	sumOdd(list, integer).
	sumOdd(list, integer, index).

clauses
	length([], 0) :- !.
	length([_|Tail], Length) :-
		length(Tail, TailLength),
		Length = TailLength + 1.

	sum([], 0) :- !.
	sum([Head|Tail], Sum) :-
		sum(Tail, TailSum),
		Sum = TailSum + Head.

	sumOdd(List, Sum) :- sumOdd(List, Sum, 0).
	sumOdd([], 0, _) :- !.
	sumOdd([_|Tail], Sum, Index) :-
		Index mod 2 = 0,
		NextIndex = Index + 1,
		sumOdd(Tail, Sum, NextIndex).
	sumOdd([Head|Tail], Sum, Index) :-
		Index mod 2 = 1,
		NextIndex = Index + 1,
		sumOdd(Tail, TailSum, NextIndex),
		Sum = TailSum + Head.

goal
	length([1, 2, 3, 4, 5], Length);
	sum([1, 2, 3, 4, 5, 6], Sum);
	sumOdd([1, 2, 1, 2, 1, 2], SumOdd).
