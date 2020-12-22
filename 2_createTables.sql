--select database
use Minions;

--create table Minions
create table Minions
(
	Id int primary key identity (1,1),
	Name varchar(50),
	Age int
)

--create table Towns
create table Towns
(
	Id int primary key identity (1,1),
	Name varchar(50)
)