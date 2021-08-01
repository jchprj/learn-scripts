// https://www.baeldung.com/spring-scheduled-tasks
// https://docs.spring.io/spring-framework/docs/4.2.0.RC2/javadoc-api/org/springframework/scheduling/annotation/Scheduled.html

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Component
import javax.annotation.PostConstruct
import org.springframework.scheduling.annotation.EnableAsync
import org.springframework.scheduling.annotation.EnableScheduling
import org.springframework.scheduling.annotation.Async
import org.springframework.scheduling.annotation.Scheduled

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
@EnableScheduling
public class Config {
    @Bean
    public String test() {
        return "test"
    }
    
    @Scheduled(fixedDelay = 1000L, initialDelay = 1000L)              // fixedDelay
    public void scheduleFixedDelayTask() {
        System.out.println(
        "Fixed delay task - " + System.currentTimeMillis() / 1000);
    }

    @Scheduled(cron = "0 15 10 15 * ?", zone = "Europe/Paris")
    public void scheduleTaskUsingCronExpression() {
        long now = System.currentTimeMillis() / 1000;
        System.out.println(
        "schedule tasks using cron jobs - " + now);
    }
}

@EnableAsync
public class ScheduledFixedRateExample {
    @Async
    @Scheduled(fixedRate = 1000L)               // fixedRate
    public void scheduleFixedRateTaskAsync() throws InterruptedException {
        System.out.println(
          "Fixed rate task async - " + System.currentTimeMillis() / 1000);
        Thread.sleep(2000);
    }
}


// Parameterizing the Schedule
// Configuring Scheduled Tasks Using XML
// Setting Delay or Rate Dynamically at Runtime

// Spring Scheduler Example Using Xml Configuration
// https://www.technicalkeeda.com/spring-tutorials/spring-scheduler-example-using-xml-configuration