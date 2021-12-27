// https://www.amitph.com/avoid-nullpointerexception-using-java-8-optional/
import java.util.Optional;

public class optional {
    public static void main (String[] args) {
        String a = "null";
        Optional.ofNullable(a.length()).ifPresent(Integer::valueOf);
        a = null;
        Optional<String> optAddress = Optional.ofNullable(a);
        String address = optAddress.orElse("null");
        System.out.println(address);                                        // null
        Optional.ofNullable(a).ifPresent(System.out::println);              // No execution to System.out::println
        Optional.ofNullable(a.length()).ifPresent(Integer::valueOf);        // Throw NPE
    }
}