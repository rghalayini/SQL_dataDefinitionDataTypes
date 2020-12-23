create table Employees
(
	Id int primary key identity (1,1),
	FirstName varchar(50),
	LastName varchar(50),
	Title varchar(50),
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
(
	RoomStatus Varchar (10) primary key NOT NULL,
	Notes nvarchar(max)
)
create table RoomTypes
(
	RoomType varchar(50) primary key,
	Notes nvarchar(max)
)
create table BedTypes
(
	BedType varchar(50) primary key,
	Notes nvarchar(max)
)
create table Rooms
(
	RoomNumber int primary key,
	RoomType varchar(50),
	BedType varchar(50),
	RoomStatus Varchar (10) check (RoomStatus in ('Available','Occupied')) NOT NULL,
	Notes nvarchar(max)
)
create table Payments
(
	Id int primary key identity (1,1),
	EmployeeId int,
	PaymentDate Date,
	AccountNumber int,
	FirstDateOccupied Date,
	LastDateOccupied Date,
	TotalDays int,
	AmountCharged float,
	TaxRate float,
	TaxAmount float,
	PaymentTotal float,
	Notes nvarchar(max)
)
create table Occupancies
(
	Id int primary key identity (1,1),
	EmployeeId int,
	DateOccupied date,
	AccountNumber int,
	RoomNumber int,
	RateApplied float,
	PhoneCharge float,
	Notes nvarchar(max)
)

INSERT INTO Employees(FirstName, LastName, Title)
VALUES ('Mike', 'Abrams', 'reception manager'), 
		('Lili', 'Mathews', 'reception assistant'), 
		('Mira', 'Kun', 'Customer help')

INSERT INTO Customers (AccountNumber, FirstName, LastName)
VALUES ('123456', 'Homer', 'Simpson'), 
		('123457', 'Jean', 'Petit'),
		('123458', 'Cecile', 'Fournier')

INSERT INTO RoomStatus (RoomStatus)
VALUES ('Available'), 
		('Clean'), 
		('Occupied')

INSERT INTO RoomTypes (RoomType)
VALUES ('Deluxe'), 
		('Single'), 
		('Suite')

INSERT INTO BedTypes (BedType)
VALUES ('Double'), 
		('King'), 
		('Single')

INSERT INTO Rooms (RoomNumber, RoomType, BedType, RoomStatus)
VALUES ('511', 'Clean', 'Double', 'Available'), 
		('512', 'Occupied', 'Single', 'Occupied'),
		('513', 'Clean', 'Double', 'Occupied')

INSERT INTO Payments (EmployeeId, PaymentDate)
VALUES (123, '2019-06-10'), 
		(124, '2020-08-15'),
		(125, '2020-09-20')

INSERT INTO Occupancies (EmployeeId)
VALUES (123),  (124),  (125)