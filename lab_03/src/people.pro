domains
	lastname, phonenumber = string.

	city, street = string.
	house, flat = integer.
	address = address(city, street, house, flat).

	mark, color = string.
	cost = integer.

	bank, bankaccount = string.
	sum = integer.

predicates
	telephone(lastname, phonenumber, address).
	car(lastname, mark, color, cost, city).
	deposit(lastname, bank, bankaccount, sum, city).

	findWithPhone(phonenumber, lastname, mark, cost).
	findWithPhone(phonenumber, mark).

clauses
	telephone("Ivanov", "123456", address("Moscow", "Pyshkinskaya", 12, 13)).
	telephone("Ivanov", "654321", address("Saint-Petersburg", "Sadovaya", 10, 127)).
	telephone("Ivanov", "222444", address("Saint-Petersburg", "Sadovaya", 10, 127)).
	telephone("Petrov", "554322", address("Moscow", "Baymanskaya", 7, 53)).
	telephone("Petrov", "223544", address("Moscow", "Baymanskaya", 7, 53)).

	car("Ivanov", "Mercedes", "Black", 3000000, "Moscow").
	car("Ivanov", "Renault", "Gray", 1200000, "Moscow").
	car("Ivanov", "Lamborghini", "Yellow", 6000000, "Saint-Petersburg").
	car("Petrov", "Audi", "Red", 2000000, "Moscow").
	car("Petrov", "Infiniti", "Black", 4000000, "Moscow").

	deposit("Ivanov", "Tinkoff", "111222333444", 40000, "Moscow").
	deposit("Ivanov", "Sberbank", "444333222111", 100000, "Moscow").
	deposit("Ivanov", "Tinkoff", "123456789000", 150000, "Saint-Petersburg").
	deposit("Petrov", "Alpha-bank", "222333111444", 10000, "Moscow").
	deposit("Petrov", "Sberbank", "123123321321", 120000, "Moscow").

	findWithPhone(Number, Lastname, Mark, Cost) :-
		telephone(Lastname, Number, address(City, _, _, _)),
		car(Lastname, Mark, _, Cost, City).

	findWithPhone(Number, Mark) :- findWithPhone(Number, _, Mark, _).

goal
	findWithPhone("654321", Lastname, Mark, Cost).
	%findWithPhone("123456", Mark).
	%City = "Saint-Petersburg",
	%telephone("Ivanov", PhoneNumber, address(City, Street, _, _)),
	%deposit("Ivanov", Bank, _, _, City).