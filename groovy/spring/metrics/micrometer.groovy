// https://spring.io/blog/2018/03/16/micrometer-spring-boot-2-s-new-application-metrics-collector
// https://stackoverflow.com/questions/56735269/configure-micrometer-registry-statsd-in-spring-boot-2

// Prefix does not work as expected as in normal Spring boot projects

@Grab('spring-boot-starter-actuator')
@Grab('micrometer-registry-statsd')

import io.micrometer.core.instrument.Clock
import io.micrometer.core.instrument.MeterRegistry
import io.micrometer.core.instrument.Tags
import io.micrometer.core.instrument.composite.CompositeMeterRegistry
import io.micrometer.core.instrument.config.NamingConvention
import io.micrometer.core.instrument.logging.LoggingMeterRegistry
import io.micrometer.core.instrument.util.HierarchicalNameMapper
import io.micrometer.statsd.StatsdConfig
import io.micrometer.statsd.StatsdFlavor
import io.micrometer.statsd.StatsdMeterRegistry
import io.micrometer.statsd.StatsdProtocol
import io.micrometer.core.instrument.Meter
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.boot.actuate.autoconfigure.metrics.MetricsProperties
import org.springframework.boot.actuate.autoconfigure.metrics.export.statsd.StatsdProperties
import java.time.Duration
import java.util.stream.Collectors
import org.slf4j.LoggerFactory
import ch.qos.logback.classic.Logger
import java.util.concurrent.atomic.AtomicLong

@RestController
class ThisWillActuallyRun {

    @Autowired Metrics metrics

    @RequestMapping("/")
    String home() {
        metrics.setGauge("Hello", 10L)
        "Hello World!"
    }

}

public class Metrics {
    private MeterRegistry meterRegistry
    Metrics(MeterRegistry meterRegistry) {
        this.meterRegistry = meterRegistry
    }

    public Long setGauge(String metricsName, Long value) {
        meterRegistry.gauge(metricsName, new AtomicLong(0L)).getAndSet(value)
    }
}

@Configuration
@EnableConfigurationProperties(MetricsProperties.class)
public class Config {
    Logger logger = LoggerFactory.getLogger(Config.class)
    String prefix = ""

    @Bean
    Metrics metric(@Qualifier("statsd") MeterRegistry meterRegistry) {
        MeterRegistry registry = meterRegistry
        registry.config().namingConvention(NamingConvention.dot)
        return new Metrics(registry)
    }

    @Bean("statsd")
    StatsdMeterRegistry statsdMeterRegistry(
        @Qualifier("statsd-config")StatsdConfig config,
        @Qualifier("name-mapper")HierarchicalNameMapper hierarchicalNameMapper,
        @Qualifier("clock")Clock clock
    ) {
        hierarchicalNameMapper.toHierarchicalName(new Meter.Id("", Tags.of("", ""), "", "", Meter.Type.COUNTER), NamingConvention.dot)
        StatsdMeterRegistry statsdMeterRegistry = new StatsdMeterRegistry(config, hierarchicalNameMapper, clock)
        statsdMeterRegistry.config().namingConvention(NamingConvention.dot)
        return statsdMeterRegistry
    }

    @Bean("clock")
    Clock micrometerClock() {
        return Clock.SYSTEM
    }
    @Bean("statsd-config")
    StatsdConfig statsdConfig(StatsdProperties metricsProperties) {
        logger.info(metricsProperties.host + ":" + metricsProperties.port)
        return new MetricsStatsdConfig(metricsProperties)
    }
    @Bean("name-mapper")
    HierarchicalNameMapper hierarchicalNameMapper() {
        Long pid = ProcessHandle.current().pid()
        logger.info("PID: $pid")
        this.prefix = "abcde"
        logger.info("Metrics prefix: " + prefix)
        HierarchicalNameMapper mapper = new HierarchicalNameMapper() {
            @Override String toHierarchicalName(Meter.Id id, NamingConvention convention) {
                String tags = ""
                if (id.tags.iterator().hasNext()) {
                    tags = "." + id.getConventionTags(convention).stream()
                        .map { t -> t.key.toString() + "." + t.value }
                        .map { nameSegment -> nameSegment.replace(" ", "_") }
                        .collect(Collectors.joining("."))
                }
                logger.info("aaaaaaaaaaaaaaaaa: " + prefix)
                return prefix + id.getConventionName(convention) + tags
            }
        }
        // mapper.toHierarchicalName(new Meter.Id("", Tags.of("", ""), "", "", Meter.Type.COUNTER), NamingConvention.dot)
        return mapper
    }

}


class MetricsStatsdConfig implements StatsdConfig {
    private StatsdProperties metricsProperties
    MetricsStatsdConfig(StatsdProperties metricsProperties) {
        this.metricsProperties = metricsProperties
    }
    @Override String get(String s) {
        return s
    }

    @Override String prefix() {
        return ""
    }

    @Override StatsdFlavor flavor() {
        return metricsProperties.flavor
    }

    @Override boolean enabled() {
        return metricsProperties.enabled
    }

    @Override String host() {
        return metricsProperties.host
    }

    @Override int port() {
        return metricsProperties.port
    }

    @Override int maxPacketLength() {
        return metricsProperties.maxPacketLength
    }

    @Override Duration pollingFrequency() {
        return metricsProperties.pollingFrequency
    }

    @Override Duration step() {
        return Duration.ofMinutes(1L)
    }


    @Override boolean publishUnchangedMeters() {
        return metricsProperties.publishUnchangedMeters
    }

    @Override StatsdProtocol protocol() {
        return StatsdProtocol.UDP
    }


}
