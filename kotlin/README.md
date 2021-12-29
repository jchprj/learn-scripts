## How to run junit folder in VS Code
Use task `gradle build`, it will run the tests. If any test is failed, the build will fail.

## How to run other folders in VS Code

* Currently Gradle project will seem to fail when lauching Kotlin class using VS Code Run and Debug (With Kotlin extension).

1. Open VS Code
2. Open a `.kt` file in a Maven or Gradle project in the sub folder of this folder
3. Go to tab `Run and Debug`, run the `Kotlin Launch` or `Kotlin Compile & Launch` configuration, it will run/debug or first run `mvn compile` and then run/debug the opened class of the filename, respectively.
4. `mvn compile` result is in TERMINAL, run/debug result is in DEBUG CONSOLE.

Tasks definitions:
* Task `mvn compile` in `.vscode/tasks.json`
* Launch configuration `Kotlin Launch` in `.vscode/launch.json`
* Launch configuration `Kotlin Compile & Launch` in `.vscode/launch.json`

According to the above configuration, the Kotlin `.kt` file should not be put in any nested sub folder.  
And `main` methodd should be defined like this:
```
class SameAsFilename {

    companion object {

        @JvmStatic
        fun main(args: Array<String>) {
            println("Hello World!")
        }
    }
}
```

References:
* [node.js - Using "preLaunchTasks" and Naming a Task in Visual Studio Code - Stack Overflow](https://stackoverflow.com/questions/35327016/using-prelaunchtasks-and-naming-a-task-in-visual-studio-code)
* [Dropwizard Kotlin "Main method is not static in class" when running java -jar - Stack Overflow](https://stackoverflow.com/questions/52123044/dropwizard-kotlin-main-method-is-not-static-in-class-when-running-java-jar)