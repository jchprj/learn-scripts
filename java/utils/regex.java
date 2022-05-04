import java.io.*;
import java.util.regex.*;
import java.util.*;
public class regex {
	public static void main(String[] args) {
        final String regex = "[ !,?._'@]+";
        final String string = "abc@! ,s";

        final Pattern pattern = Pattern.compile(regex);
        final Matcher matcher = pattern.matcher(string);

        while(matcher.find()){
            System.out.println("Full match: " + matcher.group(0));
            
            for (int i = 1; i <= matcher.groupCount(); i++) {
                System.out.println("Group " + i + ": " + matcher.group(i));
            }
        }
	}
}