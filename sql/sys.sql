-- Cannot delete or update a parent row: a foreign key constraint fails

-- From <https://stackoverflow.com/questions/1905470/cannot-delete-or-update-a-parent-row-a-foreign-key-constraint-fails> 
	-- The simple way would be to disable the foreign key check; make the changes then re-enable foreign key check.
	
-- @block foreign key check off
SET FOREIGN_KEY_CHECKS=0; -- to disable them


-- @block general log on
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them