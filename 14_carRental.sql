create table Categories 
(
	Id int primary key identity (1,1),
	CategoryName varchar(50),
	DailyRate decimal (7,2),
	WeeklyRate decimal(7,2),
	MonthlyRate (7,2),
	WeekendRate (7,2)
)

create table Cars
(
	Id int primary key identity (1,1),
	PlateNumber varchar(10),
	Manufacturer varchar(50),
	Model varchar(50),
	CarYear Date,
	CategoryId int,
	Doors int,
	Picture image,
	Condition ,-- imsert two options, new orused 
	Available  --insert Yes or no
)

create table Employees
(
	Id int primary key identity (1,1),
	FirstName varchar(50),
	LastName varchar(50),
	Title varchar(50),
	Notes varchar(200)
)

create table Customers
(
	Id int primary key identity (1,1),
	DriverLicenseNumber int,
	FullName varchar(50),
	Address varchar(100),
	City varchar(50),
	ZIPCode varchar(10),
	Notes varchar (200)
)
create table RentalOrders
(
	Id int primary key identity (1,1),
	EmployeeId int,
	CustomerId int,
	CarId int,
	TankLevel 
	FirstName varchar(50),
	LastName varchar(50),
	Title varchar(50),
	Notes varchar(200)
)