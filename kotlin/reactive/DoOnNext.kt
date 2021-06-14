// https://stackoverflow.com/questions/60103158/what-is-the-difference-between-map-and-doonnext-in-flux-i-e-project-reactor

import reactor.core.publisher.Flux
import java.util.Arrays

class DoOnNext {
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

            val manyWords = Flux.fromIterable(words)
                .doOnNext {
                    println("println0: " + it)
                }
                .flatMap{word -> Flux.fromIterable(word.split(""))}
                .distinct()
                .sort()
                .doOnNext {
                    // Thread.sleep(300)
                    println("println1: " + it)
                }
                .doOnNext {
                    println("println2: " + it)
                }
                .doOnNext {
                    println("println3: " + it)
                }
                .zipWith(Flux.range(1, Integer.MAX_VALUE)) {
                    string, count->"$count. $string"
                }
                .doOnNext {
                    println("println4: " + it)
                }
                .doOnNext {
                    println("println5: " + it)
                }
            println("")
            manyWords.subscribe()
        }
    }
}
