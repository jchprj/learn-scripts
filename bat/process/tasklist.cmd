tasklist


@REM https://stackoverflow.com/questions/9661381/how-to-sort-the-tasklist-in-the-command-prompt
TASKLIST /NH | SORT
@REM descending order
tasklist | sort /R

@REM Sorts the file according to characters in column 58(No guarantee!).
tasklist | sort /R /+58