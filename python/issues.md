## Problem with debugging python modules in VSCode

You can use the extension Command Variable to get this relative directory with dot separator.
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Python: Module CmdVar",
      "type": "python",
      "request": "launch",
      "console": "integratedTerminal",
      "module": "${command:extension.commandvariable.file.relativeDirDots}.${fileBasenameNoExtension}",
    }
  ]
}

From <https://stackoverflow.com/questions/57392698/problem-with-debugging-python-modules-in-vscode> 


## Import module with "-" in name

Starting from Python 3.1
import importlib  
foobar = importlib.import_module("foo-bar")

From <https://stackoverflow.com/questions/8350853/how-to-import-module-when-module-name-has-a-dash-or-hyphen-in-it> 


## pip is configured with locations that require TLS/SSL, however the ssl module in Python is not available

From <https://stackoverflow.com/questions/45954528/pip-is-configured-with-locations-that-require-tls-ssl-however-the-ssl-module-in> 
For centos 7:

1. Install openssl:
    ```
    sudo yum install openssl-devel
    ```

2. now goto python directory were we extracted the python tar,	run below commands
    ```
    sudo ./configure
    sudo make
    sudo make install
    ```
This will fix the problem in centos

