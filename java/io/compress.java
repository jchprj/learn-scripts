// https://stackoverflow.com/questions/6173920/zlib-compression-using-deflate-and-inflate-classes-in-java
import java.io.*;
import java.util.*;
import java.util.zip.*;
import java.io.FileNotFoundException;
import java.io.IOException;
public class compress {
	public static void main(String[] args) throws FileNotFoundException, IOException {
        File input = new File("input.java");
		System.out.println(input);
        InputStream in = new FileInputStream(input);
        String s = new String(in.readAllBytes());
		System.out.println(s);

        File output = new File("temp_test");
        OutputStream out =  new DeflaterOutputStream(new FileOutputStream(output));
        // byte[] buffer = new byte[1000];
        // int len;
        // while((len = in.read(buffer)) > 0) {
        //     out.write(buffer, 0, len);
        // }
        int len = s.getBytes().length;
        out.write(s.getBytes());
        in.close();
        out.close();
		System.out.println("wrote: " + String.valueOf(len) + " bytes");

		System.out.println("reading compressed temp_test");
        File input2 = new File("temp_test");
        InputStream in2 = new InflaterInputStream(new FileInputStream(input2));
        String s2 = new String(in2.readAllBytes());
		System.out.println(s2);
	}
}
