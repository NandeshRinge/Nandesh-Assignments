use assignments;

create table Books(
book_id int PRIMARY KEY,
title varchar(30),
author varchar(20),
publication_year date,
price int Not Null,
available_quantity int Not Null);

create table Customers(
customer_id int Primary Key,
first_name varchar(20),
last_name varchar(20),
email varchar(20),
registration_date date);

create table Book_orders(
order_id int Primary Key,
customer_id int,
order_date date,
total_amount int,
foreign key (customer_id)
References Customers(customer_id));

create table Order_Details(
order_id int,
book_id int,
quantity int,
subtotal int,
foreign key (order_id)
references Book_orders(order_id),
foreign key (book_id)
references Books(book_id));

select * from Books;

select * from Customers;

select * from Book_orders;

select * from Order_Details;

insert into Order_Details values
(1,2,10,8000);

insert into Order_Details values
(2,3,25,27500),
(3,6,5,7200),
(4,7,30,27000),
(5,1,15,15000),
(6,4,17,22100),
(7,5,20,31000);

#Q. Retrieve a list of books (book title and author) published in the year 2022
select * from Books where year(publication_year)=2022;

#Q. Calculate the total revenue generated by the bookstore in the year 2022
select * from Books where (publication_year=2022) group by (select sum(subtotal) from Order_Details);

#Q. Find the top 5 bestselling books (based on the total quantity sold) in descending order
select max(total_amount) from Book_orders where total_amount<(select max(total_amount) from Book_orders);

select total_amount from Book_orders order by total_amount desc;

select total_amount from Book_orders b1 where 6-1=(select count(total_amount)
from Book_orders b2 where b2.total_amount>b1.total_amount);

#Q. Identify the customer(s) who registered in 2023
select * from Customers where year(registration_date)=2023;

