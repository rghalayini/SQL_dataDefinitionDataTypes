create table Users
(
	Id int primary key identity (1,1),
	Username varchar(30) unique NOT NULL,
	Password varchar(26) NOT NULL,
	ProfilePicture VARBINARY(900),
	LastLogingTime datetime,
	IsDeleted Varchar (5) check (IsDeleted in ('true','false')) NOT NULL,
)

--populate table with 5 records

insert into dbo.Users (Username, Password, LastLogingTime, IsDeleted)
values ('Mike123', 'IamMIKE', null,'false'); 
insert into dbo.Users (Username, Password, LastLogingTime, IsDeleted)
values ('hundman', 'abcooo', null,'true');
insert into dbo.Users (Username, Password, LastLogingTime, IsDeleted)
values ('papam', '123456', null,'true'); 
insert into dbo.Users (Username, Password, LastLogingTime, IsDeleted)
values ('slm555', 'boummm', null,'false'); 
insert into dbo.Users (Username, Password, LastLogingTime, IsDeleted)
values ('anders.me', '123456789', null,'false'); 

select * from People;
select * from Users;