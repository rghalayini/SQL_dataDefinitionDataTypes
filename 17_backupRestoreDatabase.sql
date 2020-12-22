BACKUP DATABASE Lexicon
TO DISK = 'C:\Users\remyg\Programming\Databases\Lexicon_exercises\lab2_dataTypes\Lexicon_backup.bak';

--check this post if the path is not working or outputing an error
--https://stackoverflow.com/questions/18286765/sql-server-operating-system-error-5-5access-is-denied

DROP DATABASE Lexicon;

RESTORE DATABASE Lexicon_backup
FROM DISK = 'C:\Users\remyg\Programming\Databases\Lexicon_exercises\lab2_dataTypes\Lexicon_backup.bak';