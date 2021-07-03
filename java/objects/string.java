// https://howtodoinjava.com/java/array/convert-byte-array-string/
import java.util.Base64;
public class test {
    public static void main (String[] args) {
        test1();
        test2();
    }
    
    static void test1() {
        byte[] bytes = "hello world".getBytes();
         //Convert byte[] to String
        String s = new String(bytes);
        
        System.out.println(s);
    }
    static void test2() {
        String string = "hello world";
        byte[] bytes = string.getBytes();
         //Convert byte[] to String
        String s = Base64.getEncoder().encodeToString(bytes);
        
        System.out.println(s);

        //Base64 Decoded
        byte[] bytes2 = Base64.getDecoder().decode(string);
    }
}