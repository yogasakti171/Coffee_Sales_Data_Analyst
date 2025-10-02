/* CREATE TABLE CUSTOMER */
create table Customer(
	invocice_no text,
	customer_id text,
	gender text,
	age int,
	category text,
	quantity int,
	prince decimal,
	payment_method text,
	invoice_date date,
	shopping_mall text
)

/* ADD AGE_GROUP COLUMN TO TABLE */
alter table customer
add column age_group text;

update customer set age_group = case
	when age <= 24 then 'Young'
	when age between 24 and 54 then 'Adult'
	else 'Senior'
end;
select age_group from customer;

/* ADD INVOICE_YEAR COLUMN TO TABLE*/
alter table customer
add column invoice_year decimal;

update customer set invoice_year = extract(year from invoice_date)
select * from customer;

/* ADD REVENUE COLUMS TO TABLE */
alter table customer
add column revenue decimal;

/* RENAME PRICE COLUMN */ 
alter table customer
rename column prince to price;
update customer set revenue = quantity*price

/* ADD COLUMN INVOICE_MONTH COLUMN TO TABLE */
alter table customer
add column invoice_month text;
update customer set invoice_month = extract(month from invoice_date)

/* RENAME INVOICE_NO COLUMN */
alter table customer rename column invocice_no to invoice_no;
select * from customer;


select price from customer;