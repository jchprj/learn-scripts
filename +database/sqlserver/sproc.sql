-- https://blog.sqlauthority.com/2006/12/10/sql-server-find-stored-procedure-related-to-table-in-database-search-in-all-stored-procedure/

	SELECT DISTINCT so.name
	FROM syscomments sc
	INNER JOIN sysobjects so ON sc.id=so.id
	WHERE sc.TEXT LIKE '%tablename%'
	