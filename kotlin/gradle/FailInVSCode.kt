// Could run by gradle command directly, but fail in VS Code Run and Debug with Kotlin extension.

// Errors like:
// Exception in thread "main" java.lang.NoClassDefFoundError: kotlin/coroutines/jvm/internal/SuspendLambda
// Caused by: java.lang.ClassNotFoundException: kotlin.coroutines.jvm.internal.SuspendLambda

import java.util.Arrays
import kotlinx.coroutines.*

class FailInVSCode {
    companion object {
        @JvmStatic fun main(args : Array<String>) {
            Test().print()
        }
    }
}

class Test {
    fun print() = runBlocking { 
        println("delay 1s")
        delay(1000L) 
        println("done")
    }
}
