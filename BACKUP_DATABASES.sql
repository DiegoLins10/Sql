USE master
GO

declare 
	 @dirPath varchar(1024) 
    ,@path varchar(1024) 
    ,@msg varchar(1024) 
    ,@bkUp varchar(1024)
    ,@fileDate VARCHAR(20) = CONVERT(VARCHAR(20),GETDATE(),112) 
    ,@name VARCHAR(128) -- database name  128 is max for sql objects

-- specify database backup directory
SET @dirPath = 'D:\Databases Backups\'  

DECLARE db_cursor CURSOR READ_ONLY FOR  
SELECT name 
FROM master.sys.databases 
WHERE name NOT IN ('master','model','msdb','tempdb')  -- exclude these databases
AND state = 0 -- database is online
AND is_in_standby = 0 -- database is not read only for log shipping

OPEN db_cursor   
FETCH NEXT FROM db_cursor INTO @name   

WHILE @@FETCH_STATUS = 0   
BEGIN   
        set @path = @dirPath + @name
        set @path = 'C:\Temp\Databases\' + @name --my home path
        begin try
            exec xp_create_subdir @path;
            set @msg = 'Criando diretorio: ' + @path
            raiserror(@msg,0,0);
            set @bkUp = 'backup database ' + quotename(@name) + ' to disk = ''' + @path + '\' + @name + '_' + @fileDate + '.bak'' with format,compression;';
            exec(@bkUp);
            set @bkUp = 'RESTORE VERIFYONLY FROM DISK = ''' + @path + '\' + @name + '_' + @fileDate + '.bak''';
            exec(@bkUp);
        end try
        begin catch
            set @msg = 'Algo deu errado com: ' + @name + '    ' + error_message()
            raiserror(@msg,0,0);
        end catch
       FETCH NEXT FROM db_cursor INTO @name   
END   

CLOSE db_cursor   
DEALLOCATE db_cursor