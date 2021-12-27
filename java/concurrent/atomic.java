// https://dzone.com/articles/how-cas-compare-and-swap-java
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class atomic {
    static AtomicInteger one = new AtomicInteger(1);

    public static void main(String[] args) throws InterruptedException {
        List<Thread> threads = new ArrayList<Thread>();
        for (int i = 0; i < 10000; i++) {
            Thread t = new Thread("" + i) {
                public void run() {
                    one.incrementAndGet();
                }
            };
            threads.add(t);
            t.start();
        }
        for (Thread t : threads) {
            t.join();
        }
        System.out.println(one.get());
    }
}