create table plbpa
(
no intager PRIMARY key,
name text,
rate real);


drop table employee;

CREATE TABLE "employee" (
	"ID"	INTEGER,
	"fname"	TEXT,
	"lname"	TEXT,
	"salary"	REAL,
	"bdate"	TEXT DEFAULT '2005-01-01',
	"dno"	INTEGER,
	PRIMARY KEY("ID"),
	foreign key (dno) REFERENCES department(id)
)


-- enable fk
PRAGMA forign_keys=on;
--sure fk enabled
PRAGMA forign_keys;


--INSERT
insert into department (name)  values('is');

insert into   employee  (fname,lname,dno,salary,bdate)
values
('mark','amgad',1,5000,'2005-01-01');,
('aya','ahmed',2,6000,'2005-12-23'),
('sara','mark',3,6000,'2005-10-23');

--update DATA

UPDATE  employee
set bdate='2006-12-23'
where id=3

delete from employee
where id=5;

select id,name from department;

select * from department;

select count(id) from department; 

select count(name) from department; 

select count(*) from department;




select count(*) 
from department
where id!=2;







select id,fname||' ' ||lname as fullname
from employee
where lname like '%a%'

--where salary BETWEEN 2000 and 6000

--where salary >=2000 and salary<=6000

--where salary in (1000,6000,5000)
--where salary =1000 or salary=6000 or salary=5000;












