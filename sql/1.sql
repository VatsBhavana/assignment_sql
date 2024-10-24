create schema emp;

 CREATE TABLE student (
    Rollno INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    branch VARCHAR(45) NOT NULL
);

insert into student values(1,'jay','computer science');
insert into student values(2,'suhani','Electronic and com');
insert into student values(3,'kriti','Electronic and com');
select * from student;

create table Exam
(Rollno int not null,
S_code varchar(45) not null,
Marks int not null,
P_code varchar(45) not null,
foreign key(Rollno) references student(Rollno));

insert into Exam values(1,'CS11',50,'CS');
insert into Exam values(1,'CS12',60,'CS');
insert into Exam values(2,'EC101',66,'EC');
insert into Exam values(2,'EC102',70,'EC');
insert into Exam values(3,'EC101',45,'EC');
insert into Exam values(3,'EC102',50,'EC');

select * from Exam;
commit;

