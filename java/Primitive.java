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
        bit();
    }

    // https://www.vojtechruzicka.com/bit-manipulation-java-bitwise-bit-shift-operations/
    // A    B      ~A      A & B       A | B       A ^ B
    // 1    0      0       0           1           1
    // 0    1      1       0           1           1
    // 1    1      0       1           1           0
    // 0    0      1       0           0           0
    // two's complement. Negative numbers are representing by negating (flipping) all the bits and then adding 1. Still, if the leftmost bit is 0, the number is positive. Otherwise, it is negative.
    public static void bit () {
        byte b = 1;
        short s = 1;
        int i = 1;
        long l = 1;
        char c = 1;
        
        System.out.println(b << 3);         // Signed Left Shift
        System.out.println(s << 3);
        System.out.println(i << 3);
        System.out.println(l << 3);
        System.out.println(c << 3);

        System.out.println(c >> 3);         // Signed Right Shift
        System.out.println(c >>> 3);        // Unsigned Right Shift

        
    }
}