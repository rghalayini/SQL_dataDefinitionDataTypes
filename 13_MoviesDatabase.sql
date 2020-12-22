create table Directors
(
	Id int primary key identity(1,1),
	DirectorName varchar(50) NOT NULL,
	Notes varchar(200)
)

create table Genres
(
	Id int primary key identity(1,1),
	GenreName varchar(50) NOT NULL,
	Notes varchar(200)
)

create table Categories
(
	Id int primary key identity(1,1),
	CategoryName varchar(50) NOT NULL,
	Notes varchar(200)
)

create table Movies
(
	Id int primary key identity(1,1),
	Title varchar(100) NOT NULL,
	DirectorId int,
	CopyrightYear int,
	Length int,
	GenreId int,
	CategoryId int,
	Rating decimal (12,2),
	Notes varchar(200)
)

--populate each table with 5 records
insert into dbo.Categories (CategoryName)
values ('family');
insert into dbo.Categories (CategoryName)
values ('kids');
insert into dbo.Categories (CategoryName)
values ('3D');
insert into dbo.Categories (CategoryName)
values ('Hollywood');
insert into dbo.Categories (CategoryName)
values ('Short Film');

insert into dbo.Directors (DirectorName)
values ('Laura Hays');
insert into dbo.Directors (DirectorName)
values ('Michael Page');
insert into dbo.Directors (DirectorName)
values ('George Lucas');
insert into dbo.Directors (DirectorName)
values ('Miranda Par');
insert into dbo.Directors (DirectorName)
values ('Steven Shaw');

insert into dbo.Genres (GenreName)
values ('Thriller');
insert into dbo.Genres (GenreName)
values ('Drama');
insert into dbo.Genres (GenreName)
values ('Romance');
insert into dbo.Genres (GenreName)
values ('Action');
insert into dbo.Genres (GenreName)
values ('Sci-fi');

insert into dbo.Movies (Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating)
values ('Hello World', 2, 1999, 182, 2, 10, 5.48);
insert into dbo.Movies (Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating)
values ('Star Wars', 3, 2018, 196, 5, 9, 58.61);
insert into dbo.Movies (Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating)
values ('Dry Lake', 4, 2005, 16, 3, 6, 7.65);
insert into dbo.Movies (Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating)
values ('Giant tree', 5, 2010, 164, 1, 8, 6.28);
insert into dbo.Movies (Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating)
values ('The scientist', 1, 1995, 174, 4, 7, 3.48);

select * from Directors;
select * from Genres;
select * from Categories
select * from Movies;


