use company;
create table Employees (
    emp_id int primary key,
    first_name varchar(100),
    last_name varchar(100),
    birth_day date,
    sal int,
    super_id int,
    branch_id int
);

insert into Employees (emp_id, first_name, last_name, birth_day, sal, super_id, branch_id) values
(100, 'David', 'Wallace', '1967-11-17', 250000, NULL, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 110000, 100, 1),
(102, 'Michael', 'Scott', '1964-03-15', 75000, 100, 2),
(103, 'Angela', 'Martin', '1971-06-25', 63000, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 55000, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 69000, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 78000, 100, 3),
(107, 'Andy', 'Bernard', '1974-07-22', 65000, 106, 3),
(108, 'Dwight', 'Schrute', NULL, 98000, 107, 2),
(109, NULL, NULL, NULL, NULL, NULL, NULL); 

select * from Employees;

update Employees set birth_day = '1970-01-01' where emp_id = 108;

delete from Employees where emp_id is null;

update Employees set sal = sal + 5000 where emp_id = 102;

update Employees set super_id = 0 where emp_id = 100;

delete from Employees where emp_id = 104;  

delete from Employees where sal < 60000 limit 2; 

select * from Employees;

delete from Employees where emp_id is null;
