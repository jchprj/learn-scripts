// To run this Java file(not Java class), needs JDK 11+ by command "java HelloWorld.java".
public class StackTrace {
    public static void main (String[] args) {
        boolean result = hasClass("Stack");
        System.out.println(result);
    }

    // https://stackoverflow.com/questions/2341943/how-can-i-find-out-if-code-is-running-inside-a-junit-test-or-not
    public static boolean hasClass(String str) {  
        for (StackTraceElement element : Thread.currentThread().getStackTrace()) {
            System.out.println(element.getClassName());
            if (element.getClassName().contains(str)) {
                return true;
            }           
        }
        return false;
    }
}