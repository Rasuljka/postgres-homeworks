-- SQL-команды для создания таблиц

CREATE TABLE employees
(
	employee_id int PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	title text,
	birth_date text,
	notes text
);

INSERT INTO employees VALUES
(1, 'Robert', 'T', 'Sales Manager', '1937-09-19', 'Stop'),
(2, 'Jordano', 'N', 'Sales Manager', '1936-04-19', 'Break'),
(3, 'Rebekka', 'K', 'Sales Manager', '1977-01-09', 'Continue'),
(4, 'Ben', 'Y', 'Sales Manager', '2000-09-11', 'Quit');

CREATE TABLE customers
(
	customer_id text PRIMARY KEY,
	company_name varchar(50) NOT NULL,
	contact_name varchar(50) NOT NULL
);

INSERT INTO customers VALUES
('RGHJR', 'George company', 'George'),
('UHNMU', 'Travis company', 'Travis'),
('NHYUJ', 'Scott company', 'Scott'),
('FHYTH', 'Ulrich company', 'Ulrich');

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id text REFERENCES customers(customer_id),
	employee_id int REFERENCES employees(employee_id),
	order_date text,
	ship_city text
);

INSERT INTO orders VALUES
(1, 'RGHJR', 4, '2024-01-01', 'Moscow'),
(2, 'UHNMU', 3, '2024-01-02', 'Berlin'),
(3, 'NHYUJ', 2, '2024-01-03', 'Ufa'),
(4, 'FHYTH', 1, '2024-02-01', 'Rio');