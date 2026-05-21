use monday_coffee;

-- Monday Coffee Schemas
drop table if exists sales;
drop table if exists customers;
drop table if exists products;
drop table if exists city;

Create Table city(
	city_id int Primary key,
	city_name varchar(15),
	population bigint,
	estimated_rent float,
	city_rank int
);

Create Table customers(
customer_id int primary key,
customer_name varchar(25),
city_id int,
constraint fk_city foreign key (city_id) references city(city_id)
);

Create Table products(
product_id int primary key,
product_name varchar(35),
price float
);

Create Table sales(
sale_id int primary key,
sale_date date,
product_id int,
customer_id int,
total float,
rating int,
constraint fk_products foreign key (product_id) references products(product_id),
constraint fk_customers foreign key (customer_id) references customers(customer_id)
);
