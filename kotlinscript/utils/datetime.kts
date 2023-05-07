// https://stackoverflow.com/questions/57402045/how-to-format-in-kotlin-date-in-string-or-timestamp-to-my-preferred-format

import java.time.LocalDate
import java.time.format.DateTimeFormatter
import java.text.SimpleDateFormat
import java.time.ZoneOffset
import java.time.OffsetDateTime


val firstApiFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")
val date = LocalDate.parse("2019-08-07 09:00:00" , firstApiFormat)

println(date.dayOfWeek.toString()) // prints Wednesday
println(date.month.toString()) // prints August




val secondApiFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss'Z'")
val timestamp = 1565209665.toLong() // timestamp in Long

val timestampAsDateString = java.time.format.DateTimeFormatter.ISO_INSTANT
            .format(java.time.Instant.ofEpochSecond(timestamp))

println(timestampAsDateString) // prints 2019-08-07T20:27:45Z


val date2 = LocalDate.parse(timestampAsDateString, secondApiFormat)

println(date2.dayOfWeek.toString()) // prints Wednesday
println(date2.month.toString()) // prints August



val dateFormated = SimpleDateFormat("dd/MM/yyyy").format(java.util.Date())
println(dateFormated.toString()) // prints August



// https://stackoverflow.com/questions/67834076/how-to-get-the-current-time-in-utc-add-some-minutes-to-it-and-the-convert-it-to
fun getDateTimeFormatted(minutesToAdd: Long, pattern: String): String {
    // get current time in UTC, no millis needed
    val nowInUtc = OffsetDateTime.now(ZoneOffset.UTC)
    // add some minutes to it
    val someMinutesLater = nowInUtc.plusMinutes(minutesToAdd)
    // return the result in the given pattern
    return someMinutesLater.format(
        DateTimeFormatter.ofPattern(pattern)
    )
}
val dateTime = getDateTimeFormatted(50, "HH:mm:ss")
println(dateTime)