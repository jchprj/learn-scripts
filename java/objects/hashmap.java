// https://www.baeldung.com/java-compare-hashmaps
import java.util.*;
public class test {
    public static void main (String[] args) {
        test1();
        test2();
        test3();
        test4();
    }
    
    static void test1() {
        Map<String, String> asiaCapital1 = new HashMap<String, String>();
        asiaCapital1.put("Japan", "Tokyo");
        asiaCapital1.put("South Korea", "Seoul");
    
        Map<String, String> asiaCapital2 = new HashMap<String, String>();
        asiaCapital2.put("South Korea", "Seoul");
        asiaCapital2.put("Japan", "Tokyo");
    
        // true
        System.out.println(asiaCapital1.equals(asiaCapital2));
    }
    static void test2() {
        Map<String, Object> asiaCapital1 = new HashMap<String, Object>();
        asiaCapital1 = new HashMap();
        asiaCapital1.put("Japan", "Tokyo");
        asiaCapital1.put("South Korea", "Seoul");
        asiaCapital1.put("a", 1);
    
        Map<String, Object> asiaCapital2 = new HashMap<String, Object>();
        asiaCapital2.put("South Korea", "Seoul");
        asiaCapital2.put("Japan", "Tokyo");
        asiaCapital2.put("a", 1);

        // true
        System.out.println(asiaCapital1.equals(asiaCapital2));
    }
    static void test3() {
        Map<String, String[]> asiaCity1 = new HashMap<String, String[]>();
        asiaCity1.put("Japan", new String[] { "Tokyo", "Osaka" });
        asiaCity1.put("South Korea", new String[] { "Seoul", "Busan" });
    
        Map<String, String[]> asiaCity2 = new HashMap<String, String[]>();
        asiaCity2.put("South Korea", new String[] { "Seoul", "Busan" });
        asiaCity2.put("Japan", new String[] { "Tokyo", "Osaka" });
    
        // false
        System.out.println(asiaCity1.equals(asiaCity2));
    }
    static void test4() {
        Map<String, String[]> asiaCity1 = new HashMap<String, String[]>();
        asiaCity1.put("Japan", new String[] { "Tokyo", "Osaka" });
        asiaCity1.put("South Korea", new String[] { "Seoul", "Busan" });
    
        Map<String, String[]> asiaCity2 = new HashMap<String, String[]>();
        asiaCity2.put("South Korea", new String[] { "Seoul", "Busan" });
        asiaCity2.put("Japan", new String[] { "Tokyo", "Osaka" });
    
        Boolean result = asiaCity1.size() == asiaCity2.size() && 
            asiaCity1.entrySet().stream()
                .allMatch(e -> Arrays.equals(e.getValue(), asiaCity2.get(e.getKey())));
        // true
        System.out.println(result);
    }
}