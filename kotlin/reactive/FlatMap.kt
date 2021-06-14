import reactor.core.publisher.Flux
import java.util.Arrays

class FlatMap {
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
            val manyWords = Flux.fromIterable(words)
                .flatMap{word -> Flux.fromIterable(word.split(""))}
                .distinct()
                .sort()
                .zipWith(Flux.range(1, Integer.MAX_VALUE)) {
                    string, count->"$count. $string"
                }
            
            System.out.println()
            manyWords.subscribe(System.out::println)
        }
    }
}
