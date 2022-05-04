// https://www.baeldung.com/java-executor-service-tutorial
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.Executors;
import java.lang.InterruptedException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Callable;
import java.util.HashSet;
import java.util.Set;
import java.util.List;
import java.util.concurrent.TimeUnit;
public class thread implements Runnable {
    public static void main (String[] args) throws InterruptedException, ExecutionException {
        System.out.println("test1");
        new thread();
        System.out.println("test6");
    }
    public thread () throws InterruptedException, ExecutionException {
        System.out.println("test2");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        Future<?> submit = newCachedThreadPool.submit(this);
        submit.get();
        System.out.println("test3");

        Runnable runnableTask = () -> {
            try {
                TimeUnit.MILLISECONDS.sleep(300);
                System.out.println("runnableTask");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        };
        newCachedThreadPool.execute(runnableTask);
        System.out.println("test4");

        Callable<String> callableTask = () -> {
            TimeUnit.MILLISECONDS.sleep(300);
            System.out.println("callableTask");
            return "Task's execution";
        };
        
        Set<Callable<String>> callables = new HashSet<Callable<String>>();
        callables.add(callableTask);
        List<Future<String>> futures = newCachedThreadPool.invokeAll(callables);
        for(Future<String> future : futures){
            System.out.println("future.get = " + future.get());
        }
        System.out.println("test5");

        newCachedThreadPool.shutdown();
    }

    public void run () {
        System.out.println("test");
    }
}
