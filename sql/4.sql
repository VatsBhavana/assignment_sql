
-- 18. Write a SQL statement that displays all the information about all salespeople


create table salespeople(
salesman_id int not null primary key,
name varchar(20) not null,
city varchar(20) not null,
commission float not null);

insert into salespeople values(5001,'James Hoog','New York',0.15);
insert into salespeople values(5002,'Nail Knite','Paris',0.13);
insert into salespeople values(5005,'Pit Alex','London',0.11);
insert into salespeople values(5006,'Mc Lyon','Paris',0.14);
insert into salespeople values(5007,'Paul Adam','Rome',0.13);
insert into salespeople values(5003,'Lauson Hen','San Jose',0.12);




create table orders(
ord_no int not null,
purch_amt float not null,
ord_date date,
customer_id int not null,
salesman_id int not null,
foreign key(salesman_id) references salespeople(salesman_id));
alter table orders modify ord_date varchar(15) not null;
update orders set ord_date = date_format(ord_date,'%y-%b-%d');

insert into orders values(70001,150.5,'2012-10-05',3005,5002);
insert into orders values(70009,270.65,'2012-09-10',3001,5005);
insert into orders values(70002,65.26,'2012-10-05',3002,5001);
insert into orders values(70004,110.5,'2012-08-17',3009,5003);
insert into orders values(70007,948.5,'2012-09-10',3005,5002);
insert into orders values(70005,2400.6,'2012-07-27',3007,5001);
insert into orders values(70008,5760,'2012-09-10',3002,5001);
insert into orders values(70000,1983.43,'2012-10-10',3004,5006);
insert into orders values(70003,2480.4,'2012-10-10',3009,5003);
insert into orders values(70002,250.45,'2012-06-27',3008,5002);
insert into orders values(70001,75.29,'2012-08-17',3003,5007);
insert into orders values(70003,3045.6,'2012-04-25',3002,5001);

select * from orders;



-- 14.Names and cities of all salespeople in London with commission
-- above 0.1215.All salespeople either in Barcelona or in London

select * from salespeople where (city='London' and commission > 0.1215) or city='Barcelona' ;

-- 16.All salespeople with commission between 0.10 and 0.12. (Boundary valuesshould be excluded).

select * from salespeople where commission between 0.10 and 0.12;

-- 17.All customers excluding those with rating <= 100 unless they are located in Rome.

select * from customer where rating>100 or city='Rome';

-- 19. From the following table, write a SQL query to find orders that are
-- delivered by a salesperson with ID. 5001. Return ord_no, ord_date,purch_amt

select  ord_no,ord_date,purch_amt from orders where salesman_id =5001;
commit;