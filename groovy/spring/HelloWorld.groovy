// https://www.baeldung.com/spring-boot-logging
import org.slf4j.LoggerFactory
import ch.qos.logback.classic.Logger

@RestController
class ThisWillActuallyRun {
    Logger logger = LoggerFactory.getLogger(ThisWillActuallyRun.class)

    @RequestMapping("/")
    String home() {
        logger.info("Hello World!")
        "Hello World!"
    }

}