
-- @block foreign key check
-- Cannot delete or update a parent row: a foreign key constraint fails

-- From <https://stackoverflow.com/questions/1905470/cannot-delete-or-update-a-parent-row-a-foreign-key-constraint-fails> 
	-- The simple way would be to disable the foreign key check; make the changes then re-enable foreign key check.

	
-- @block foreign key check off
SET FOREIGN_KEY_CHECKS=0; -- to disable them


-- @block general log on
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them





-- @block sql safe updates
-- https://stackoverflow.com/questions/11448068/mysql-error-code-1175-during-update-in-mysql-workbench


-- @block sql safe updates on
SET SQL_SAFE_UPDATES = 1;

-- @block sql safe updates off
SET SQL_SAFE_UPDATES = 0;





-- @block max_allowed_packet
-- https://stackoverflow.com/questions/13759418/com-mysql-jdbc-packettoobigexception
set global max_allowed_packet=64*1024*1024;
