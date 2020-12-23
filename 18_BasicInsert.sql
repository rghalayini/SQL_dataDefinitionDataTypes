insert into dbo.Towns (Name)
values ('Stockholm'), ('Oslo'), ('Copenhagen'), ('Helsinki')

insert into dbo.Departments (Name)
values ('Engineering'), ('Sales'), ('Marketing'), ('Software Development'), ('Quality Assurance')

insert into dbo.Employees (FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary)
values ('Mel', 'Gibson', 'Gibson', '.Net Developer', 4, '2013-02-01', 3500.00),
	   ('Chuck', 'Norris', 'Norris', 'Senior Engineer', 1, '2004-03-02', 4000.00),
	   ('Greta', 'Garbo', 'Garbo', 'Intern', 5, '2016-08-28', 525.25),
	   ('Meryl', 'Streep', 'Streep', 'CEO', 2, '2007-12-09', 3000.00),
	   ('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88)



select * from Employees;
select * from Departments;
select * from Towns;