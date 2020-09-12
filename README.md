# Learn Scripts

## Overview

This repository is used for learning scripts or quick references.

The scripts covered here include basic syntax and basic usages. As well as documented sample output of some excutions.

Some specific area usage will also be added if it is commonly used.

## Shell

To use VS Code extension Code Runner to run shell script, needs set `shellscript` executor in settings:

* Run in WSL (with `"code-runner.runInTerminal": true`)
```
    "code-runner.executorMap": {
        "shellscript": "bash $(/bin/wslpath $fullFileName)"
    }
```
* Run in PowerShell (From [Visual Studio Code - CodeRunner - Run shellscripts with WSL. · GitHub](https://gist.github.com/PetrChudoba/35bebd6c6f0f5cc81597798e7e64ce3d))
```
    "code-runner.executorMap": {
        "shellscript": "wsl bash $('/mnt/' + $fullFileName.Substring(0,1).ToLower() + $fullFileName.Substring(2).Replace('\\','/') )",
    }
```

## Ansible

To use defined VS Code tasks in this repo for Ansible playbook which supports optional tags, needs VS Code extension: [rioj7.command-variable](https://marketplace.visualstudio.com/items?itemName=rioj7.command-variable)

## Jenkins

To run pipeline scripts under `jenkins` folder in VS Code, needs VS Code extension: [Jenkins Runner - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=dave-hagedorn.jenkins-runner), and configure a Jenkins server and a pipeline job for test for the extension, suggest running a Jenkins in Docker. Then just press `F1` and select `Jenkins Runner: Run Pipeline Script On Default Job`.

### VS Code Jenkins Runner extension

To avoid crumb error, need to set this in the settings of the Jenkins server
```
"useCrumbIssuer": true
```

Sample configuration in settings(does not support workspace settings, so could not commit it):
```
"jenkins-runner.hostConfigs": {
        "host-with-password": {
            "url": "http://localhost:8080",
            "user": "admin",
            "password": "123456",
            "useCrumbIssuer": true,
            "rejectUnauthorizedCert": false
        }
    },
    "jenkins-runner.jobs": {
        "run without parameter": {
            "isDefault": true,
            "runWith": "host-with-password",
            "name": "pipeline-test",
            "environment": {
                "HOST_NAME": "localhost"
            }
        },
        "run with parameter user": {
            "runWith": [
                "host-with-password",
            ],
            "name": "pipeline-test",
            "parameters": {
                "user": "test"
            }
        }
    }
```

## Compiled languages

If Shebang way is supported, then added. Scripting is also a good way to study a programming language, unlike a complex package or project structure. Java already started simplify its way for beginners by adopting scripting.

### Java

Starting from Java 11, Java file could be executed like scripts. This article also discussed what should be script. The author emphasized "automation". I want to emphasize source code, scripting means always excuted in an open source pattern. So as Java 11+ supports source execution, I added Java to this repo.

[New Java 11 Feature: Launch Single-File Source-Code Programs](https://medium.com/the-java-report/new-java-11-feature-launch-single-file-source-code-programs-fadd698abf54)

Here also mentioned single-source-file execution provides a way for presenting demo and previewing new features: [Scripting Java 11, Shebang And All](https://blog.codefx.org/java/scripting-java-shebang/)


### Go

Go language could be executed by "go run file.go" at the beginning, although Go projects is better strictly under $GOPATH folder with all dependencies, this is still a scripting way. 

Also there is a simple Shebang way by this `gorun`: https://github.com/erning/gorun

From articles: [Go as a Scripting Language](https://www.infoq.com/news/2020/04/go-scripting-language/) and [Story: Writing Scripts with Go](https://gist.github.com/posener/73ffd326d88483df6b1cb66e8ed1e0bd)

### Scala

Scala is targeted, it is more supportive than Java on scripting. Such as:

* [How to use Scala as a scripting language](https://alvinalexander.com/scala/how-to-write-scala-shell-scripts-scripting-language-examples/)
* [Scala Scripting and the 15 Minute Blog Engine](https://www.lihaoyi.com/post/ScalaScriptingandthe15MinuteBlogEngine.html)
* [Shello World: Writing a Scala script | Codementor](https://www.codementor.io/@martinbrosenberg/shello-world-writing-a-scala-script-z8qg4i7d4)

Even for JavaScript:

* [Scala.js](http://www.scala-js.org/)

It's more complex, will add later.

### C/C++/Qt

Education always relates to C, it would be good to have a place for some coding. There are many discussion and trials. This is an article from Qt:

* [Scripting In C++](https://www.qt.io/blog/2018/06/15/scripting-in-c)

This is also complex.