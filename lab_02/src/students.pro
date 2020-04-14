domains
	firstname, lastname = string.
	student = student(firstname, lastname).
	nameuniversity, city = string.
	university = university(nameuniversity, city).

predicates
	learn(student, university).

clauses
	learn(student("Ivan", "Ivanov"), university("BMSTU", "Moscow")).
	
	learn(Student1, university("Coursera", "Online")) :- learn(Student1, university("BMSTU", "Moscow")).

	learn(student("Vasilii", "Vasiliev"), university("MSU", "Moscow")).

	learn(student("Ivan", "Popov"), university("MIFI", "Moscow")).
	
	learn(student("Petr", "Popov"), university("MIFI", "Moscow")).
	learn(student("Petr", "Popov"), university("Coursera", "Online")).

	learn(student("Petr", "Petrov"), university("MFTI", "Moscow")).
	learn(student("Petr", "Petrov"), university("Stepik", "Online")).
	
	learn(student("Vasilii", "Popov"), University) :- learn(student("Petr", "Popov"), University).

	learn(student("Alexander", "Ivanov"), university("ITMO", "Saint-Petersburg")).

	learn(student("Petr", "Ivanov"), university("ITMO", "Saint-Petersburg")).
	learn(student("Petr", "Ivanov"), university("SPBSTU", "Saint-Petersburg")).

	learn(student("Ivan", "Vasiliev"), university("ITMO", "Saint-Petersburg")).

	learn(student("Alexander", "Petrov"), university("SPBSTU", "Saint-Petersburg")).

	learn(Student2, university("Stepik", "Online")) :- learn(Student2, university("ITMO", "Saint-Petersburg")).
	
goal
	% learn(Student, university(Uneversity, "Online")).
	% learn(Student, university(University, "Moscow")).
	% learn(Student, university(University, "Saint-Petersburg")).
	% learn(student("Petr", "Petrov"), University).
	learn(student("Ivan", "Ivanov"), university("BMSTU", "Moscow")).
