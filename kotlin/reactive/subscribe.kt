import reactor.core.publisher.Flux
import java.util.*
import org.reactivestreams.Subscriber
import org.reactivestreams.Subscription
import reactor.core.scheduler.Schedulers
class subscribe {
    companion object {
        @JvmStatic fun main(args : Array<String>) {
            val elements = ArrayList<Int>()

            println("test1")
            Flux.just(1, 2, 3, 4)
                .log()
                .subscribe(elements::add)

            println(elements)

            // The core difference is that Reactive is a push model, whereas the Java 8 Streams are a pull model. 
            // In a reactive approach, events are pushed to the subscribers as they come in.
            // val collected = Stream.of(1, 2, 3, 4)
            //     .collect(toList());

            println("test2")
            Flux.just(1, 2, 3, 4)
                .log()
                .subscribe (
                    object : Subscriber<Int> {
                        lateinit var s: Subscription
                        var onNextAmount: Int = 0
                        override fun onSubscribe(s: Subscription) {
                            this.s = s
                            s.request(2)
                        }
        
                        override fun onNext(integer: Int) {
                            elements.add(integer!!)
                            println(integer)
                            onNextAmount++;
                            if (onNextAmount % 2 == 0) {
                                s.request(2);
                            }
                        }
        
                        override fun onError(t: Throwable) {}
        
                        override fun onComplete() {
                            println("onComplete")
                        }
                    }
                )

            println(elements)
            
            println("test3")
            Flux.just(1, 2, 3, 4)
                .log()
                .map{ i -> i * 2 }             // Java: .map(i -> i * 2)
                .subscribe(elements::add)

            println(elements)

            println("test4")
            Flux.just(1, 2, 3, 4)
                .log()
                .map { i: Int -> i * 2 }
                .subscribeOn(Schedulers.parallel())
                .subscribe(elements::add)
            Thread.sleep(1000);

            println(elements)
        }
    }
}
