-- https://stackoverflow.com/questions/14112283/how-to-select-rows-from-partition-in-mysql
SELECT * FROM table PARTITION (partitionName);


-- https://dev.mysql.com/doc/refman/5.7/en/partitioning-limitations-locking.html
ALTER TABLE ... EXCHANGE PARTITION --- prunes locks; only the exchanged table and the exchanged partition are locked.
ALTER TABLE ... TRUNCATE PARTITION --- prunes locks; only the partitions to be emptied are locked.

--- In addition, ALTER TABLE statements take metadata locks on the table level.