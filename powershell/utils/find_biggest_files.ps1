# https://superuser.com/questions/455664/how-do-i-find-the-biggest-file-in-a-folder-and-subfolders-on-the-command-line
Get-ChildItem -Path "C:\SomeParentDirectory" -Recurse | Sort-Object -Descending Length
