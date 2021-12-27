// http://flex4java.blogspot.com/2015/03/volatile-atomicity-visibility-and.html
import java.util.ArrayList;
import java.util.List;

public class _volatile {
    public static volatile int count = 0;

    public static void main(String[] args) throws InterruptedException {
        List<Thread> threads = new ArrayList<Thread>();
        for (int i = 0; i < 10000; i++) {
            Thread t = new Thread("" + i) {
                public void run() {
                    ++count; // increment the visitors count
                }
            };
            threads.add(t);
            t.start();
        }
        for (Thread t : threads) {
            t.join();
        }
        System.out.println(count);
    }
}