create table People
(
	Id int primary key identity (1,1),
	Name varchar(200) NOT NULL,
	Picture VARBINARY(2048),
	Height decimal (3,2),--in meters
	Weight decimal (5,2),--in kg
	Gender Varchar (10) check (gender in ('Female','Male')) NOT NULL,
	Birthdate date
)
--date Format is: YYYY-MM-DD.

--populate table with 5 records

insert into dbo.People (Name, Height, Weight, Gender, Birthdate)
values ('Mike', 1.75, 75.50, 'Male', '1970-01-06'); 
insert into dbo.People (Name, Height, Weight, Gender, Birthdate)
values ('Sofia', 1.80, 67.78, 'Female', '1981-05-26'); 
insert into dbo.People (Name, Height, Weight, Gender, Birthdate)
values ('Anders', 1.68, 82.23, 'Male', '1996-09-12');
insert into dbo.People (Name, Height, Weight, Gender, Birthdate)
values ('Mira', 1.71, 57.37, 'Female', '2005-02-20');
insert into dbo.People (Name, Height, Weight, Gender, Birthdate)
values ('Ernst', 1.78, 73.20, 'Male', '2010-04-10'); 

select * from people

create table test
(

	Picture VARBINARY(2048)

)