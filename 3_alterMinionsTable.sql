--Alter Minions table

alter table Minions
add TownId int;


--make townId foreign key and reference it to Id column of Towns
alter table Minions
add foreign key (TownId) references Towns(Id);