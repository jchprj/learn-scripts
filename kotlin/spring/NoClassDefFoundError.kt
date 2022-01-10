// https://stackoverflow.com/questions/1401111/noclassdeffounderror-could-not-initialize-class-error

package api
import org.slf4j.LoggerFactory
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.GetMapping

@RestController
@RequestMapping("/")
class NoClassDefFoundError {
    val logger = LoggerFactory.getLogger(NoClassDefFoundError::class.java)

    @GetMapping()
    fun home(): String {
        logger.info("Hello World!")
        print(HelloWorld)
        return "Hello World!"
    }
}

object HelloWorld {
    init {
        print("only enter first time even failed")
        // Only first call will throw this exception, from second time on it will only throw "java.lang.NoClassDefFoundError: Could not initialize class api.HelloWorld"
        throw IllegalStateException()
    }
}
