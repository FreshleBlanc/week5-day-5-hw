create or replace procedure insertCustomer (_first_name varchar, _last_name varchar,_address varchar, _billing_info varchar)
language plpgsql as $$
begin 
	insert into customer (first_name, last_name, address, billing_info)
	values
		(_first_name, _last_name, _address, _billing_info);
end;
$$


call insertcustomer('Dylan', 'Smith', '504 street north', '321 down st') 


create or replace procedure insertservice(_first_name varchar, _last_name varchar)
language plpgsql as $$
begin 
	insert into service_ticket 
	values	(_first_name, _last_name)
end;
$$



CREATE OR REPLACE FUNCTION priceComparison (_last_name varchar)
RETURNS TABLE (
	first_name varchar,
	last_name varchar,
	make varchar,
	model varchar,
	"year" integer,
	price float
)
LANGUAGE plpgsql AS $$
BEGIN
	RETURN QUERY (
		SELECT DISTINCT customer.first_name, customer.last_name, car.make, car.model, car."year", invoice.price
		FROM car
		JOIN invoice
		ON invoice.invoice_id = car.invoice_id 
		JOIN customer
		ON customer.customer_id = invoice.customer_id 
		WHERE customer.last_name = _last_name
	);	
END;
$$

select priceComparison('Lynch')


