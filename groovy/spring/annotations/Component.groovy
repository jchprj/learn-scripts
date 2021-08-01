// https://www.baeldung.com/spring-component-repository-service
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Component
import javax.annotation.PostConstruct

@RestController
class ThisWillActuallyRun {

    @Autowired
    private Config config = null
    
    @RequestMapping("/")
    String home() {
        config.test()
    }

}

// Spring will only pick up and register beans with @Component, and doesn't look for @Service and @Repository in general.
@Component
public class Config {
    @Bean
    public String test() {
        return "test"
    }
}


// @Service and @Repository are special cases of @Component. They are technically the same
// @Repository’s job is to catch persistence-specific exceptions and re-throw them as one of Spring’s unified unchecked exceptions.
// We mark beans with @Service to indicate that they're holding the business logic. Besides being used in the service layer, there isn't any other special use for this annotation.