create table employee(
employee_id int not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
salary int not null,
joining_date varchar(50) not null,
dapartment varchar(50) not null);



INSERT INTO employee VALUES(1,'John','Abraham',1000000,str_to_date('01-Jan-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Banking');
INSERT INTO employee VALUES(2,'Michael','Clarke',800000,str_to_date('01-Jan-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Insurance');

INSERT INTO employee VALUES(3,'Roy','Thomas',700000,str_to_date('01-Feb-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Banking');

INSERT INTO employee VALUES(4,'Tom','Jose',600000,str_to_date('01-Feb-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Insurance');

INSERT INTO employee VALUES(5,'Jerry','Pinto',650000,str_to_date('01-Feb-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Insurance');

INSERT INTO employee VALUES(6,'Philip','Mathew',750000,str_to_date('01-Jan-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Services');

INSERT INTO employee VALUES(7,'TestName1','123',650000,str_to_date('01-Jan-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Services');

INSERT INTO employee VALUES(8,'TestName2','Lname%',600000,str_to_date('01-Fab-13 12:00:00 AM','%d-%b-%y %h:%i:%s %p'),'Insurance');

select * from employee;

create table Incentive(
employee_id int not null,
Incentive_date varchar(15) not null,
Incentive_amount int not null,
foreign key(employee_id) references employee(employee_id));

insert into Incentive values(1,'01-Feb-13',5000);
insert into Incentive values(2,'01-Feb-13',3000);
insert into Incentive values(3,'01-Feb-13',4000);
insert into Incentive values(1,'01-Jan-13',4500);
insert into Incentive values(2,'01-Jan-13',3500);

select * from Incentive;

-- 3. Get First_Name from employee table using Tom name “Employee Name”.

select * from employee where first_name ='Tom';

-- 4. Get FIRST_NAME, Joining Date, and Salary from employee table.

select first_name,joining_date,salary from employee;

-- 5. Get all employee details from the employee table order by First_Name Ascending and Salary descending?

select * from employee order by first_name asc,salary desc ;

-- 6. Get employee details from employee table whose first name contains ‘J’.

select * from employee where first_name like 'J%_';

-- 7. Get department wise maximum salary from employee table order by

select dapartment,max(salary) as max_salary from employee group by dapartment order by max_salary asc;

-- 8. salaryascending?

select * from employee order by salary asc;

/* 9. Select first_name, incentive amount from employee and incentives table
for those employees who have incentives and incentive amount greater than 3000*/

select employee.first_name,Incentive.Incentive_amount from employee join Incentive on employee.employee_id=Incentive.employee_id where Incentive.Incentive_amount>3000;

-- 10. Create After Insert trigger on Employee table which insert records in view table

create trigger insert_data
after insert on employee for each row
insert into view_table(employee_id,first_name,last_name,dapartment,salary)
values(new.employee_id,new.first_name,new.last_name,new.dapartment,new.salary);

commit;