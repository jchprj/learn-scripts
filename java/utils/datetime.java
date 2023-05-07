// https://stackoverflow.com/questions/17692863/converting-string-in-iso8601-t-z-format-to-date
// https://grokonez.com/kotlin/kotlin-convert-string-datetime

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.FormatStyle;
import java.time.format.DateTimeFormatter;
import java.time.OffsetDateTime;
import java.text.SimpleDateFormat;
import java.sql.Timestamp;
import java.util.Locale;
import java.util.Date;
import java.util.Calendar;
import java.util.TimeZone;


public class datetime {
    public static void main (String[] args) throws Exception {
        String dateStringOrigin = "2013-07-17T03:58:00.000Z"; //Date and time (GMT): Saturday, January 1, 2000 12:00:00 AM
        
        Date date = getDateFromDateString(dateStringOrigin, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        System.out.println(date);

        // Date and time (GMT): Saturday, January 1, 2000 12:00:00 AM
        String dateString = getDateFromMilliseconds(946684800000L, "dd/MM/yyyy hh:mm:ss.SSS");
        System.out.println(dateString);

        LocalDateTime localDateTime = getLocalDatetime("2018-01-28T13:42:17.546");
        System.out.println(localDateTime);

        LocalDateTime localDateTime2 = getLocalDatetime("2018-01-28T13:42:17Z", "yyyy-MM-dd'T'HH:mm:ss'Z'");
        System.out.println(localDateTime2);

        Date date2 = convertTimestampToDate(946684800000L);
        System.out.println(date2);

        OffsetDateTime odt = getOffsetDateTime("20210817132649", "uuuuMMddHHmmss");
        System.out.println(odt);
    }

    public static Date getDateFromDateString(String dateString, String dateFormat) throws Exception {
        TimeZone tz = TimeZone.getTimeZone("Asia/Calcutta");
        Calendar cal = Calendar.getInstance(tz);
        SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
        sdf.setCalendar(cal);
        cal.setTime(sdf.parse(dateString));
        Date date = cal.getTime();
        System.out.println(date);
        return date;
    }

    public static LocalDateTime getLocalDatetime(String dateString) throws Exception {
        return LocalDateTime.parse(dateString);
    }

    public static LocalDateTime getLocalDatetime(String dateString, String dateFormat) throws Exception {
        return LocalDateTime.parse(dateString, DateTimeFormatter.ofPattern(dateFormat));
    }

    // https://stackoverflow.com/questions/21162753/jdbc-resultset-i-need-a-getdatetime-but-there-is-only-getdate-and-gettimestamp/21163453
    public static Date convertTimestampToDate(Long t) {
        Timestamp timestamp = new Timestamp(t);
        System.out.println(timestamp.getTime());
        java.util.Date date = new java.util.Date(timestamp.getTime());
        System.out.println(date.getTime());
        return date;
    }

    // https://stackoverflow.com/questions/7953725/how-to-convert-milliseconds-to-date-format-in-android
    public static String getDateFromMilliseconds(long milliSeconds, String dateFormat)
    {
        // Create a DateFormatter object for displaying date in specified format.
        SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);

        // Create a calendar object that will convert the date and time value in milliseconds to date. 
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(milliSeconds);
        return formatter.format(calendar.getTime());
    }

    // https://stackoverflow.com/questions/69617726/how-to-parse-datetime-in-format-yyyymmddhhmmss-to-offsetdatetime-using-dateforma
    public static OffsetDateTime getOffsetDateTime(String dateString, String dateFormat) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(dateFormat, Locale.ENGLISH)
                                        .withZone(ZoneOffset.UTC);
        return OffsetDateTime.parse(dateString, formatter);
    }
}
