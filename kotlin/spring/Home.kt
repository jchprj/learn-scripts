package api
import org.slf4j.LoggerFactory
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.GetMapping

@RestController
@RequestMapping("/")
class Home {
    val logger = LoggerFactory.getLogger(Home::class.java)

    @GetMapping()
    suspend fun home(): String {
        logger.info("Hello World!")
        return "Hello World!"
    }
}