# Task variables


## [Visual Studio Code Variables Reference](https://code.visualstudio.com/docs/editor/variables-reference)

* ${workspaceFolder} - the path of the folder opened in VS Code
* ${workspaceFolderBasename} - the name of the folder opened in VS Code without any slashes (/)
* ${file} - the current opened file
* ${relativeFile} - the current opened file relative to workspaceFolder
* ${relativeFileDirname} - the current opened file's dirname relative to workspaceFolder
* ${fileBasename} - the current opened file's basename
* ${fileBasenameNoExtension} - the current opened file's basename with no file extension
* ${fileDirname} - the current opened file's dirname
* ${fileExtname} - the current opened file's extension
* ${cwd} - the task runner's current working directory on startup
* ${lineNumber} - the current selected line number in the active file
* ${selectedText} - the current selected text in the active file
* ${execPath} - the path to the running VS Code executable
* ${defaultBuildTask} - the name of the default build task

Environment variables

You can also reference environment variables through the ${env:Name} syntax (for example, ${env:USERNAME}).

## Extension [Command Variable - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=rioj7.command-variable)

* extension.commandvariable.file.relativeDirDots : The directory of the current file relative to the workspace root directory with dots as separator. Can be used to specify a Python module.
* extension.commandvariable.file.filePosix : The same result as ${file} but in Posix form. Directory separator '/', and drive designation as '/z/project/'
* extension.commandvariable.file.fileDirnamePosix : The same result as ${fileDirname} but in Posix form.
* extension.commandvariable.file.relativeFilePosix : The same result as ${relativeFile} but in Posix form.
* extension.commandvariable.file.relativeFileDirnamePosix : The same result as ${relativeFileDirname} but in Posix form.
* extension.commandvariable.file.fileAsKey : Use part of the file path as a key in a map lookup. Can be used in lauch.json to select arguments based on filename.
* extension.commandvariable.file.fileDirBasename : The basename of the ${fileDirname}
* extension.commandvariable.file.fileDirBasename1Up : The directory name 1 Up of ${fileDirname}
* extension.commandvariable.file.fileDirBasename2Up : The directory name 2 Up of ${fileDirname}
* extension.commandvariable.file.fileDirBasename3Up : The directory name 3 Up of ${fileDirname}
* extension.commandvariable.file.fileDirBasename4Up : The directory name 4 Up of ${fileDirname}
* extension.commandvariable.file.fileDirBasename5Up : The directory name 5 Up of ${fileDirname}
* extension.commandvariable.file.content : The content of the given file name. Use "inputs", see example. Or the value of a Key-Value pair, see example.
* extension.commandvariable.file.pickFile : Show a Quick Pick selection box with file paths that match an include and an exclude glob pattern. Use "inputs", see example.
* extension.commandvariable.workspace.workspaceFolderPosix : The same result as ${workspaceFolder} but in Posix form.
* extension.commandvariable.workspace.folderBasename1Up : The directory name 1 Up of the workspace root directory. The parent of the workspace folder that is opened with File > Open Folder...
* extension.commandvariable.workspace.folderBasename2Up : The directory name 2 Up of the workspace root directory.
* extension.commandvariable.workspace.folderBasename3Up : The directory name 3 Up of the workspace root directory.
* extension.commandvariable.workspace.folderBasename4Up : The directory name 4 Up of the workspace root directory.
* extension.commandvariable.workspace.folderBasename5Up : The directory name 5 Up of the workspace root directory.
* extension.commandvariable.selectedText : The selected text in the active editor, empty string if nothing selected.
* extension.commandvariable.selectionStartLineNumber : Line number of the selection start
* extension.commandvariable.selectionStartColumnNumber : Column number of the selection start
* extension.commandvariable.selectionEndLineNumber : Line number of the selection end
* extension.commandvariable.selectionEndColumnNumber : Column number of the selection end
* extension.commandvariable.currentLineText : The text of the line in the active editor where the selection starts or where the cursor is.
* extension.commandvariable.dirSep : Directory separator for this platform. '' on Windows, '/' on other platforms
* extension.commandvariable.pickStringRemember : the same as Input variable pickString but it remembers the picked item by a key
* extension.commandvariable.rememberPick : retreive a remembered pick by key
* extension.commandvariable.dateTime : language-sensitive format of current date and time (using a Locale)
* extension.commandvariable.dateTimeInEditor : language-sensitive format of current date and time (using a Locale) to be used for keybindings


[visual studio code - How to pass optional selected text to a task - Stack Overflow](https://stackoverflow.com/questions/57791212/how-to-pass-optional-selected-text-to-a-task)