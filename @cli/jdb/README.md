[How to Debug Java on the Command Line | foojay](https://foojay.io/today/jdb/)

    jdb Test
    jdb -attach 5005

    stop at Test:5
    run
    step
    print i
    locals
    where
    threads
    cont
    help



[java - JDB: com.sun.tools.example.debug.expr.ParseException: Unknown operation: % - Stack Overflow](https://stackoverflow.com/questions/26855169/jdb-com-sun-tools-example-debug-expr-parseexception-unknown-operation)

    javac -g Test.java; (echo -e "stop at Test:5\nrun\nstep\nwhere\n" && cat) | jdb Test

javac
    -g                         Generate all debugging info
    -g:none                    Generate no debugging info
    -g:{lines,vars,source}     Generate only some debugging info


[Command Line Debugger? - Kotlin Discussions](https://discuss.kotlinlang.org/t/command-line-debugger/8027/3)

    You will have to add the Kotlin standard library to the classpath.