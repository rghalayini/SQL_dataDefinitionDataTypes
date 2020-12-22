alter table Users
DROP constraint PK__Users__77222459BBEA656F;

--Use this below to know the exact name of the key, otherwise it will not recognise the key
SELECT name
FROM   sys.key_constraints
WHERE  [type] = 'PK'
       AND [parent_object_id] = Object_id('dbo.Users');


alter table users
ADD PRIMARY KEY(Id);


alter table Users
ADD CONSTRAINT CheckUsernameLength CHECK(LEN(Username) >=5);