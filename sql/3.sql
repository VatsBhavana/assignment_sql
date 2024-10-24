-- 11.Create table given below: Salesperson and Customer
create table salesperson(
SNO int not null primary key,
Sname varchar(20) not null,
city varchar(20) not null,
comm float not null);

insert into salesperson values(1001,'Peel','London',0.12);
insert into salesperson values(1002,'Serres','San Jose',0.13);
insert into salesperson values(1004,'Motika','London',0.11);
insert into salesperson values(1007,'Rafkin','Barcelona',0.15);
insert into salesperson values(1003,'Axelrod','New York',0.1);

select * from salesperson;

create table customer(
CNM int not null primary key,
Cname varchar(20) not null,
city varchar(20) not null,
rating int not null,
SNO int not null,
foreign key(SNO) references salesperson(SNO));

insert into customer values(201,'Hoffman','London',100,1001);
insert into customer values(202,'Giovanne','Roe',200,1003);

insert into customer values(203,'Liu','San Jose',300,1002);

insert into customer values(204,'Grass','Barcelona',100,1002);

insert into customer values(206,'Clemens','London',300,1007);

insert into customer values(207,'Pereira','Roe',100,1004);

select * from customer;

-- 12.Retrieve the below data from above table
select * from salesperson;
select *from customer;

-- 13.All orders for more than $1000
select * from orders where purch_amt > 1000;

-- 17.All customers excluding those with rating <= 100 unless they are located in Roe

select * from customer where rating>100 or city='Reo';






commit;