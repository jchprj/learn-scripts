// https://www.baeldung.com/java-lifo-thread-safe
// https://www.cs.rochester.edu/~scott/papers/1996_POD_queues.pdf
// ConcurrentLinkedDeque is a lock-free implementation of Deque interface. This implementation is completely thread-safe as it uses an efficient lock-free algorithm.


import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class deque {
    static int total = 50;
    static AtomicInteger one = new AtomicInteger(1);
    public static void main(String[] args) throws InterruptedException {
        // https://stackoverflow.com/questions/7939257/wait-until-all-threads-finish-their-work-in-java
        ConcurrentLinkedDeque<String> q = new ConcurrentLinkedDeque<String>();

        ExecutorService es = Executors.newCachedThreadPool();
        for (int i = 0; i < total; i++)
            es.execute(new Runnable() {
                @Override
                public void run() {
                    q.push("foo" + String.valueOf(one.incrementAndGet()));
                }
            });
        es.shutdown();
        boolean finished = es.awaitTermination(1, TimeUnit.MINUTES);
        // all tasks have finished or the time has been reached.
        System.out.println(q);
        for (int i = 0; i < total; i++) {
            System.out.println(q.poll());
        }
    }
}
