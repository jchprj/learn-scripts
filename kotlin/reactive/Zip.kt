import reactor.core.publisher.Flux
import java.util.Arrays

class Zip {
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
            val manyWords = Flux.fromIterable(words).zipWith(Flux.range(1, Integer.MAX_VALUE), {string, count->"$count. $string"})
            
            fewWords.subscribe(System.out::println)
            System.out.println()
            manyWords.subscribe(System.out::println)
        }
    }
}
