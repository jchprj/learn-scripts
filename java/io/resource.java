// https://stackoverflow.com/questions/10452825/including-a-text-file-inside-a-jar-file-and-reading-it
import java.io.*;
import java.util.*;
import java.net.URL;
public class resource {
	public static void main(String[] args) throws IOException {
		resource r = new resource();
		// add a leading slash to indicate 'search from the root of the class-path'
		URL urlToDictionary = r.getClass().getResource("/resource.java");
		InputStream stream = urlToDictionary.openStream();
		String s = stream.readAllBytes().toString();
		System.out.println(s);
	}
}