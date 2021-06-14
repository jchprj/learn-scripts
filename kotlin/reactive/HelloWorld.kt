import reactor.core.publisher.Flux
import java.util.Arrays

class HelloWorld {
    companion object {
        @JvmStatic fun main(args : Array<String>) {
            val words = Arrays.asList(
                    "the",
                    "quick",
                    "brown",
                    "fox",
                    "jumped",
                    "over",
                    "the",
                    "lazy",
                    "dog"
                    );

            // https://www.infoq.com/articles/rxjava-by-example/
            // just is overloaded for up to 10 input parameters
            val fewWords = Flux.just("Hello", "World")
            val manyWords = Flux.fromIterable(words)
            
            fewWords.subscribe(System.out::println)
            System.out.println()
            manyWords.subscribe(System.out::println)
        }
    }
}
