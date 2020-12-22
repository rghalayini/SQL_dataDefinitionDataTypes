create table Categories 
(
	Id int primary key identity (1,1),
	CategoryName varchar(50),
	DailyRate decimal (10,2),
	WeeklyRate decimal(10,2),
	MonthlyRate decimal (10,2),
	WeekendRate decimal (10,2)
)

create table Cars
(
	Id int primary key identity (1,1),
	PlateNumber varchar(10) not null,
	Manufacturer varchar(50) not null,
	Model varchar(50) not null,
	CarYear int not null,
	CategoryId int not null,
	Doors int not null,
	Picture image,
	Condition Varchar (10) check (Condition in ('Used','New')) NOT NULL,
	Available Varchar (10) check (Available in ('Yes','No')) NOT NULL,
)

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
	Id int primary key identity (1,1),
	DriverLicenseNumber int,
	FullName varchar(50),
	Address varchar(100),
	City varchar(50),
	ZIPCode varchar(10),
	Notes nvarchar(max)
)

create table RentalOrders
(
	Id int primary key identity (1,1),
	EmployeeId int,
	CustomerId int,
	CarId int,
	TankLevel float NOT NULL,
	KilometrageStart float NOT NULL,
	KilometrageEnd float NOT NULL,
	TotalKilometrage float NOT NULL,
	StartDate date NOT NULL,
	EndDate date NOT NULL,
	TotalDays int NOT NULL,
	RateApplied decimal(15, 2) NOT NULL,
	TaxRate decimal(15, 2) NOT NULL,
	OrderStatus varchar(50),
	FirstName varchar(50),
	LastName varchar(50),
	Title varchar(50),
	Notes nvarchar(max)
)

insert into dbo.Categories (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
values ('sedan', 20.50, 100.25, 299.99, 44.99);
insert into dbo.Categories (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
values ('van', 25.50, 150.25, 400.99, 49.99);
insert into dbo.Categories (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
values ('sport', 50.50, 300.25, 499.99, 74.99);

insert into dbo.Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Condition, Available)
values ('1378M', 'Mercedes', '2016', 2018, 3, 2, 'New', 'Yes');
insert into dbo.Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Condition, Available)
values ('444LM', 'BMW', '2019', 2020, 1, 4, 'New', 'No');
insert into dbo.Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Condition, Available)
values ('298KB', 'Peugeot', '2012', 2014, 2, 3, 'Used', 'Yes');

insert into dbo.Employees (FirstName, LastName, Title)
values ('Samuel', 'Andersson', 'Manager');
insert into dbo.Employees (FirstName, LastName, Title)
values ('Astrid', 'Gunnarsson', 'sales expert');
insert into dbo.Employees (FirstName, LastName, Title)
values ('Bo', 'Lindblad', 'Mecanic');

insert into dbo.Customers (DriverLicenseNumber, FullName, Address, City, ZIPCode)
values (23482, 'Mel Gibson', '225 Hollywood Boulevard', 'Los Angeles', 'AB3453');
insert into dbo.Customers (DriverLicenseNumber, FullName, Address, City, ZIPCode)
values (34521, 'Sara Hansen', '15 fiskgatan', 'Goteborg', '13678');
insert into dbo.Customers (DriverLicenseNumber, FullName, Address, City, ZIPCode)
values (24328, 'Anton Koopman', '2342 Hollywood Boulevard', 'Maastricht', 'AM34S');

INSERT INTO RentalOrders (EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus)
VALUES
	(1, 1, 1, 100, 10500, 12500.5, 2000.5, '2017-01-22', '2017-01-22', 1, 15, 0.20, 'Rented'),
	(2, 2, 2, 100, 3200, 4000.5, 800.5, '2017-01-20', '2017-01-22', 3, 80, 0.20, 'Pending'),
	(3, 3, 3, 100, 40000, 45000.5, 5000.5, '2017-01-21', '2017-01-22', 2, 110, 0.20, 'Closed')

select * from RentalOrders