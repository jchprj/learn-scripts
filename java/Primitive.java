// https://www.javatpoint.com/java-data-types

public class Primitive {
    public static void main (String[] args) {
        Boolean one = false;
        System.out.println(one);
        byte a = 10, b = -20;
        System.out.println(a);
        System.out.println(b);
        System.out.println(Byte.MAX_VALUE);             //127
        System.out.println(Byte.MIN_VALUE);             //-128
        short s = 10000, r = -5000;
        System.out.println(s);
        System.out.println(r);
        System.out.println(Short.MAX_VALUE);            //32767
        System.out.println(Short.MIN_VALUE);            //-32768
        int ai = 100000, bi = -200000;
        System.out.println(ai);
        System.out.println(bi);
        System.out.println(Integer.MAX_VALUE);          //2147483647
        System.out.println(Integer.MIN_VALUE);          //-2147483648
        long al = 100000L, bl = -200000L;
        System.out.println(al);
        System.out.println(bl);
        System.out.println(Long.MAX_VALUE);             //9223372036854775807
        System.out.println(Long.MIN_VALUE);             //-9223372036854775808
        float f1 = 234.5f;
        System.out.println(f1);
        System.out.println(Float.MAX_VALUE);            //3.4028235E38
        System.out.println(Float.MIN_VALUE);            //1.4E-45
        double d1 = 12.3;
        System.out.println(d1);
        System.out.println(Double.MAX_VALUE);           //1.7976931348623157E308
        System.out.println(Double.MIN_VALUE);           //4.9E-324
        char letterA = 'A', letterB;
        System.out.println(letterA);
        // System.out.println(letterB);                 //error: compilation failed
    }
}