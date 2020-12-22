create table Employees
(
	Id int primary key identity (1,1),
	FirstName varchar(50),
	LastName varchar(50),
	Notes nvarchar(max)
)
create table Customers
(
	AccountNumber int primary key,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	PhoneNumber varchar (20),
	EmergencyName varchar(50),
	EmergencyNumber varchar(20),
	Notes nvarchar(max)
)
create table RoomStatus