import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Component
import javax.annotation.PostConstruct
import org.springframework.scheduling.annotation.EnableScheduling
import org.springframework.scheduling.annotation.Scheduled
import java.lang.Thread

@RestController
class ThisWillActuallyRun {

    @Autowired
    private Config config = null
    
    @RequestMapping("/")
    String home() {
        config.test()
    }

}

@Component
public class Config {

    Config() {
        System.out.println("Construct started")
        Thread.sleep(1000)
        System.out.println("Construct finished")
    }

    @PostConstruct
    void postInit() {
        System.out.println("PostConstruct started")
        Thread.sleep(1000)
        System.out.println("PostConstruct finished")
    }

    @Bean
    public String test() {
        return "test"
    }
}
