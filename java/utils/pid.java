import java.lang.management.ManagementFactory;
public class pid {
    public static void main(String[] args) {
        String pid = ManagementFactory.getRuntimeMXBean().getName();
        System.out.println(pid);        // pid@hostname

        // https://stackoverflow.com/questions/35842/how-can-a-java-program-get-its-own-process-id
        // In Java 9 the new process API can be used:
        long pid2 = ProcessHandle.current().pid();
        System.out.println(pid2);
    }
}
