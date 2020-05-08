predicates
	maxWithCut(integer, integer, integer).
	maxWoutCut(integer, integer, integer).

clauses
	% Max of two numbers with using cut
	maxWithCut(A, B, Max) :- A > B, Max = A, !.
	maxWithCut(_, B, Max) :- Max = B.

	% Max of two numbers without using cut
	maxWoutCut(A, B, Max) :- A > B, Max = A.
	maxWoutCut(A, B, Max) :- A <= B, Max = B.

goal
	write("maxWithCut of (3, 2):\t"),
	maxWithCut(3, 2, Max);

	write("maxWithCut of (1, 2):\t"),
	maxWithCut(1, 2, Max);
	
	write("maxWithCut of (1, 1):\t"),
	maxWithCut(1, 1, Max);

	write("maxWoutCut of (3, 2):\t"),
	maxWoutCut(3, 2, Max);

	write("maxWoutCut of (1, 2):\t"),
	maxWoutCut(1, 2, Max);

	write("maxWoutCut of (1, 1):\t"),
	maxWoutCut(1, 1, Max).
	