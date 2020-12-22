--Insert records

insert into dbo.Minions (Name, Age)
values ('Kevin', 22);
insert into dbo.Minions (Name, Age)
values ('Bob', 15);
insert into dbo.Minions (Name, Age)
values ('Steward', NULL);


insert into dbo.Towns (Name)
values ('Sofia');
insert into dbo.Towns (Name)
values ('Peter');
insert into dbo.Towns (Name)
values ('Victoria');


update Minions
set TownId = 1
where Name = 'Kevin';

update Minions
set TownId = 2
where Name = 'Steward';

update Minions
set TownId = 3
where Name = 'Bob';

select * from Minions
select * from Towns