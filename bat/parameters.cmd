@REM https://stackoverflow.com/questions/357315/how-to-get-list-of-arguments

@REM %0 - the command used to call the batch file (could be foo, ..\foo, c:\bats\foo.bat, etc.)
@REM %1 is the first command line parameter,
@REM %2 is the second command line parameter,
@REM and so on till %9 (and SHIFT can be used for those after the 9th).

@REM %~nx0 - the actual name of the batch file, regardless of calling method (some-batch.bat)
@REM %~dp0 - drive and path to the script (d:\scripts)
@REM %~dpnx0 - is the fully qualified path name of the script (d:\scripts\some-batch.bat)

echo %0
echo %1
echo %~nx0
echo %~dp0
echo %~dpnx0




@REM https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/call#batch-parameters
@REM %~1	Expands %1 and removes surrounding quotation marks.
@REM %~f1	Expands %1 to a fully qualified path.
@REM %~d1	Expands %1 to a drive letter only.
@REM %~p1	Expands %1 to a path only.
@REM %~n1	Expands %1 to a file name only.
@REM %~x1	Expands %1 to a file name extension only.
@REM %~s1	Expands %1 to a fully qualified path that contains short names only.
@REM %~a1	Expands %1 to the file attributes.
@REM %~t1	Expands %1 to the date and time of file.
@REM %~z1	Expands %1 to the size of the file.
@REM %~$PATH:1	Searches the directories listed in the PATH environment variable, and expands %1 to the fully qualified name of the first directory found. If the environment variable name is not defined or the file is not found by the search, then this modifier expands to the empty string.