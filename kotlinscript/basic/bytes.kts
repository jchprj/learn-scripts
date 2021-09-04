// https://stackoverflow.com/questions/51642947/in-kotlin-whats-the-cleanest-way-to-convert-a-long-to-uint32-bytearray-and-an-i
// https://www.baeldung.com/kotlin/byte-arrays-to-hex-strings

import java.nio.ByteBuffer

fun longToUInt32ByteArray1(value: Long): ByteArray {
    val bytes = ByteArray(8)
    ByteBuffer.wrap(bytes).putLong(value)
    return bytes
}
fun longToUInt32ByteArray2(value: Long): ByteArray {
    val bytes = ByteArray(8)
    bytes[7] = (value and 0xFFFF).toByte()
    bytes[6] = ((value ushr 8) and 0xFFFF).toByte()
    bytes[5] = ((value ushr 16) and 0xFFFF).toByte()
    bytes[4] = ((value ushr 24) and 0xFFFF).toByte()
    bytes[3] = ((value ushr 32) and 0xFFFF).toByte()
    bytes[2] = ((value ushr 40) and 0xFFFF).toByte()
    bytes[1] = ((value ushr 48) and 0xFFFF).toByte()
    bytes[0] = ((value ushr 56) and 0xFFFF).toByte()
    return bytes
}
fun bytesToHex(bytes: ByteArray): String {
    return bytes.map { "%02x".format(it) }.toList().joinToString("")
}
val long: Long = Long.MAX_VALUE
println(long)
val bytes1 = longToUInt32ByteArray1(long)
val hex1 = bytesToHex(bytes1)
println(hex1)
val bytes2 = longToUInt32ByteArray2(long)
val hex2 = bytesToHex(bytes2)
println(hex2)
