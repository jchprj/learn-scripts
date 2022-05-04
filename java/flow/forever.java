// https://stackoverflow.com/questions/12199011/how-to-run-a-program-forever-in-java-is-system-in-read-the-only-way
import java.lang.InterruptedException;
public class forever {
    public static void main(String[] args) throws InterruptedException {
        System.out.println("start");
        Thread.currentThread().join();
        System.out.println("never execute");
    }
}
