import java.lang.InterruptedException;
import java.util.concurrent.ExecutionException;

public class sleep {
    public static void main(String[] args) throws InterruptedException, ExecutionException{
        System.out.println(System.currentTimeMillis());
        Thread.sleep(1000);
        System.out.println(System.currentTimeMillis());
    }
}
