// https://stackoverflow.com/questions/35444264/how-do-i-write-to-a-file-in-kotlin

import java.io.File

val file = File("./temp_test")
file.printWriter().use { out ->
    out.print("abcde")
}
file.setExecutable(true)