// https://stackoverflow.com/questions/17692863/converting-string-in-iso8601-t-z-format-to-date
// https://grokonez.com/kotlin/kotlin-convert-string-datetime

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.FormatStyle;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.text.*;
import java.sql.Timestamp;

public class test {
    public static void main (String[] args) throws Exception {
        formatDatetime();
        convertTimestamp();
    }

    public static void formatDatetime() throws Exception {
        TimeZone tz = TimeZone.getTimeZone("Asia/Calcutta");
        Calendar cal = Calendar.getInstance(tz);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        sdf.setCalendar(cal);
        cal.setTime(sdf.parse("2013-07-17T03:58:00.000Z"));
        Date date = cal.getTime();
        System.out.println(date);

        LocalDateTime localDateTime = LocalDateTime.parse("2018-01-28T13:42:17.546");
        System.out.println(localDateTime);

        LocalDateTime localDateTime2 = LocalDateTime.parse("2018-01-28T13:42:17Z", DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss'Z'"));
        System.out.println(localDateTime2);
    }

    // https://stackoverflow.com/questions/21162753/jdbc-resultset-i-need-a-getdatetime-but-there-is-only-getdate-and-gettimestamp/21163453
    public static void convertTimestamp() {
        Long t = 946684800000L; //Date and time (GMT): Saturday, January 1, 2000 12:00:00 AM
        Timestamp timestamp = new Timestamp(t);
        System.out.println(timestamp.getTime());
        java.util.Date date = new java.util.Date(timestamp.getTime());
        System.out.println(date);
        System.out.println(date.getTime());
    }
}