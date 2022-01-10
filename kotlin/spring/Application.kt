
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.context.annotation.ComponentScan

@SpringBootApplication
@ComponentScan(".", "api")
class Application {
    companion object {
        @JvmStatic fun main(args : Array<String>) {
            runApplication<Application>(*args)
        }
    }

}