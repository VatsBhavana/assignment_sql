-- 1. What do you understand By Database
--> A database is a structured collection of data that is stored electronically and can be accessed, managed, and updated.

-- 3. What is Difference between DBMS and RDBMS?
-->DBMS stands for database Management System.In the data is stored as a file.
RDBMS Relational database Management system.in data is stored in the form of tables.

-- 4. What is MF Cod Rule of RDBMS Systems?
-->The relational model for databases, designed to define what is required from a database management system 
in order relational database management system.
Physical data Independence Rule states that a relational database management system must be physically independent of the hardware
and software used to store and access the data.

-- 5. What do you understand By Data Redundancy?
-->Data redundancy occurs when the same piece of data exists in multiple places, whereas data inconsistency is when the same data exists in different formats in multiple tables.

-- 6. What is DDL Interpreter?
-->Data definition language Interpreter It interprets the Instructions and stores the record in a data dictionary.

-- 7. What is DML Compiler in SQL?
-->Data Manipulation Language is a class of SQL statements that are used to query, edit, add and delete row-level data from database tables or views. 
The main DML statements are SELECT,INSERT,DELETE,UPDATE.

-- 8. What is SQL Key Constraints writing an Example of SQL Key Constraints
-->create table employee(
id int not null primary key,
name varchar(20)not null);

-- 9. What is save Point? How to create a save Point write a Query?
-->A savepoint is a special mark inside a transaction that allows all commands that are executed after it was established 
to be rolled back, restoring the transaction state to what it was at the time of the savepoint.
savepoint save_point_name;

-- 10.What is trigger and how to create a Trigger in SQL?
-->A trigger is a stored procedure in a database that automatically invokes whenever a special event in the database occurs.
Two types of trigger after trigger and before trigger. 
The create trigger statement creates a new trigger in a database.

commit;






