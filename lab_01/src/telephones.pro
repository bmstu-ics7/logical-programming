domains
	firstname, lastname = symbol.
	telephone = integer.
predicates
	note(firstname, lastname, telephone).
clauses
	note("Ivan", "Ivanov", 111111111).
	note("Ivan", "Smirnov", 123456789).
	note("Petr", "Pertovich", 222222222).
	note("Vasilii", "Vasiliev", 333333333).
goal
	note("Ivan", Lastname, Telephone).