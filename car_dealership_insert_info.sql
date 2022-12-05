insert into customer (first_name, last_name, address, billing_info)
values 
('Lucas', 'Lang', '123 for st', '543 Ne st'),
('Hayden', 'Lynch', '504 nw blvd', '5437 wild rd'),
('Jessica', 'Marquetti', 'n 70 terr', '1365 w 41 st'),
('Stephanie', 'Peralta', '23 fowler st', '998 nebraska ave')

insert into mechanic  (first_name, last_name)
values 
('Ron', 'Swanson'),
('Jessie', 'James'),
('Keshawn', 'Johnson'),
('Pohoake', 'Lehigh')

insert into salesperson  (first_name, last_name)
values 
('Missy', 'Elliot'),
('Miles', 'Davis'),
('Nina', 'Simone'),
('Erykah', 'Badu')

insert into invoice(price, customer_id, mechanic_id, salesperson_id)
values	
	(6000, 1, 2, 1),
	(500000, 2, 2, 2)


insert into car (make, model, "year", customer_id, mechanic_id, salesperson_id, invoice_id)
values
	('mercury', 'grand marquis', 2003, 1, 2, 1, 1),
	('nissan', 'skyline', 2027, 2, 2, 2, 2)

	
insert into service_ticket (car_id, customer_id)
values
	(1,1),
	(2,2)



	