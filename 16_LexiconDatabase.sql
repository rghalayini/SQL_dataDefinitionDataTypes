create table Towns
(
	Id int primary key identity (1,1),
	Name varchar(50)
)
create table Addresses
(
	Id int primary key identity (1,1),
	AddressText varchar(150),
	TownId int foreign key references Towns(Id)
)
create table Departments 
(
	Id int primary key identity (1,1),
	Name varchar(50) not null
)
create table Employees
(
	Id int primary key identity (1,1),
	FirstName varchar (50) not null,
	MiddleName varchar (50),
	LastName varchar (50) not null,
	JobTitle varchar (50) not null,
	DepartmentId int foreign key references Departments(Id),
	HireDate date,
	Salary float,
	AddressId int foreign key references Addresses(Id)
)