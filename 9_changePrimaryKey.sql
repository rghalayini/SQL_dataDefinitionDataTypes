--drop primary key
ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC07295C4C3C;

--Use this below to know the exact name of the key, otherwise it will not recognise the key
SELECT name
FROM   sys.key_constraints
WHERE  [type] = 'PK'
       AND [parent_object_id] = Object_id('dbo.Users');

--add new primary key as combination between Id and username
alter table Users
add primary key (Id, Username);