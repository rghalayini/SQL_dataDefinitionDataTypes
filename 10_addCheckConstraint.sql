--add check constraint

alter table Users
ADD CONSTRAINT CheckPassword CHECK(LEN(Password) >=5);

