// https://algs4.cs.princeton.edu/13stacks/
// Java's implementation of valueOf() retrieves a cached values if the integer is between -128 and 127
public class integer {
    public static void main(String[] args) {
        Integer a1 = 100;
        Integer a2 = 100;
        System.out.println(a1 == a2);   // true

        Integer b1 = Integer.valueOf(100);
        Integer b2 = Integer.valueOf(100);
        System.out.println(b1 == b2);   // true

        Integer c1 = 150;
        Integer c2 = 150;
        System.out.println(c1 == c2);   // false

        Integer d1 = Integer.valueOf(150);
        Integer d2 = Integer.valueOf(150);
        System.out.println(d1 == d2);   // false

        Integer a = null;
        // int b = a;       java.lang.NullPointerException: Cannot invoke "java.lang.Integer.intValue()" because "<local9>" is null
    }
}
