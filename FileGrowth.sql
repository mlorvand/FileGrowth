SELECT 
    DB_NAME(database_id) AS DatabaseName,
    file_id,
    name AS FileName,
    type_desc AS FileType,
    size * 8 / 1024 AS CurrentSizeMB,
    growth,
    is_percent_growth,
    max_size,
    growth * 8 / 1024 AS GrowthSizeMB,
    physical_name
FROM sys.master_files
ORDER BY DatabaseName, FileType;
GO

SELECT  
    te.name AS EventName, 
    t.DatabaseName, 
    t.FileName, 
    t.StartTime, 
    (t.IntegerData*8)/1024 AS GrowthMB
FROM sys.traces AS st
CROSS APPLY fn_trace_gettable(st.path, DEFAULT) AS t
JOIN sys.trace_events AS te ON t.EventClass = te.trace_event_id
WHERE te.name = 'Data File Auto Grow' 
   OR te.name = 'Log File Auto Grow'
ORDER BY t.StartTime DESC;
GO
