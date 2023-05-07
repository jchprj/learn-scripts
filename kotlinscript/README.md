# Kotlin script

Kotlin scripts with Maven dependency in `.kts` could only be run by `kscript` which needs Bash script and Java 8.

Other pure Kotlin scripts could be run by `kotlinc`, if installed could also directly be executed by Code Runner in VS Code.



## kscript

[GitHub - kscripting/kscript: Scripting enhancements for Kotlin](https://github.com/kscripting/kscript)

Install kscript:
```
sdk install kscript
```

Or use Docker to run:

```
docker run -i holgerbrandl/kscript - < kscript.kts
```

### Requirements
* Bash (unavailable in Windows cmd)


### Issues


#### [kscript] [ERROR] Failed while connecting to the server. Check the connection (http/https, port, proxy, credentials, etc.)of your maven dependency locators. 

[Unable to pull dependencies · Issue #238 · kscripting/kscript · GitHub](https://github.com/kscripting/kscript/issues/238)

    maven settings.xml