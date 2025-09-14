# FileGrowth
SQL Server script to display the current status of database files, including auto growth configuration, growth type (percent or KB), maximum size, and physical file location.


# SQL Server Auto Growth Info

This repository provides a T-SQL script to check the **auto growth configuration** and current status of all database files on a SQL Server instance.  

## Script

```sql
/*
===============================================
 Script:    SQL Server Auto Growth Info
 Author:    Mehdi Lorvand
 Purpose:   Show current status of database files,
            including Auto Growth configuration
===============================================
*/

SELECT 
    DB_NAME(database_id) AS DatabaseName,        -- Database name
    file_id,                                     -- File ID within the database
    name AS FileName,                            -- Logical file name
    type_desc AS FileType,                       -- File type: ROWS or LOG
    size * 8 / 1024 AS CurrentSizeMB,            -- Current size in MB
    growth,                                      -- Growth value (KB or %)
    is_percent_growth,                           -- 1 = growth is percent, 0 = KB
    max_size,                                    -- Max size (-1 = unlimited)
    growth * 8 / 1024 AS GrowthSizeMB,           -- Growth size in MB (if KB based)
    physical_name                                -- Physical path of the file
FROM sys.master_files
ORDER BY DatabaseName, FileType;
GO

Usage

Open SQL Server Management Studio (SSMS).

Connect to your SQL Server instance.

Open a new query window and paste the script.

Run the script to get the current auto growth configuration for all databases.

Example Output
DatabaseName	FileName	FileType	CurrentSizeMB	Growth	is_percent_growth	GrowthSizeMB	MaxSize	PhysicalName
MyDatabase	MyDatabase	ROWS	256	64	0	0.5	-1	C:\MSSQL\Data\MyDatabase.mdf
MyDatabase	MyDatabase_log	LOG	128	10	1	NULL	2048	C:\MSSQL\Data\MyDatabase.ldf
