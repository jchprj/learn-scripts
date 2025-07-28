import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.function.Consumer;
import java.util.ArrayList;
import java.util.List;

public class future {
    @FunctionalInterface
    public interface OperatingActuator<T> {
        T performAction();
    }

    public static Consumer<String> printString = null;
    public static OperatingActuator<String> f = () -> {
        OperatingActuator<String> ff = () -> {
            try {
                printString.toString();
                return "";
            } catch (Throwable var9) {
                var9.printStackTrace();
                throw var9;
            } finally {
                System.out.println("finally");
            }
        };
        ff.performAction();
        return ("Hello, World!");
    };

    public static void main(String[] args) throws InterruptedException {
        System.out.println("start");
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(10, 10, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<>());

        executeAsyncTask(f, threadPoolExecutor);
    }


    private static CompletableFuture<?> executeAsyncTask(OperatingActuator<?> taskSupplier, ThreadPoolExecutor threadPoolExecutor) {
        try {
            return CompletableFuture.supplyAsync(() -> {
                try {
                    return taskSupplier.performAction();
                } catch (Exception e) {
                    e.printStackTrace(); // Print the stack trace
                    return CompletableFuture.completedFuture(e);
                }
            }, threadPoolExecutor);
        } catch (RejectedExecutionException e) {
            throw e;
        } catch (Exception e) {
            throw e;
        }
    }
}
