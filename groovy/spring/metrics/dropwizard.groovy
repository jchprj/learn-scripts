// https://metrics.dropwizard.io/4.2.0/getting-started.html

// Prefix works as expected as in normal Spring boot projects

@Grab('metrics-core')
@Grab('metrics-jmx')
@Grab('metrics-jvm')
@Grab('com.readytalk:metrics3-statsd:4.1.2')

import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicLong
import java.lang.management.ManagementFactory
import javax.management.ObjectName
import org.slf4j.LoggerFactory
import ch.qos.logback.classic.Logger
import com.codahale.metrics.jvm.FileDescriptorRatioGauge
import com.codahale.metrics.jvm.MemoryUsageGaugeSet
import com.codahale.metrics.jvm.GarbageCollectorMetricSet
import com.codahale.metrics.jvm.BufferPoolMetricSet
import com.codahale.metrics.jvm.ThreadStatesGaugeSet
import com.codahale.metrics.jvm.JmxAttributeGauge
import com.codahale.metrics.Meter
import com.codahale.metrics.MetricFilter
import com.codahale.metrics.MetricRegistry
import com.codahale.metrics.ConsoleReporter
import com.codahale.metrics.jmx.JmxReporter
import com.readytalk.metrics.StatsDReporter

@RestController
class ThisWillActuallyRun {
    Logger logger = LoggerFactory.getLogger(ThisWillActuallyRun.class)

    @Autowired Metrics metrics

    @RequestMapping("/")
    String home() {
        metrics.mark()
        metrics.setGauge("Hello", 10L)
        logger.info("Hello World!")
        "Hello World!"
    }

}

public class Metrics {
    private final MetricRegistry registry
    private final Meter requests
    Metrics(MetricRegistry registry) {
        this.registry = registry
        requests = registry.meter("requests")
    }

    public Long setGauge(String metricsName, Long value) {
        registry.gauge(metricsName, new AtomicLong(0L)).getAndSet(value)
    }

    public void mark() {
        requests.mark()
    }
}

@Configuration
public class Config {
    Logger logger = LoggerFactory.getLogger(Config.class)
    private final MetricRegistry registry = new MetricRegistry()

    @Bean
    MetricRegistry metricRegistry() {
        return registry
    }

    @Bean
    Metrics metric() {
        registry.register(registry.name("JVM", "MemoryUsage"), new MemoryUsageGaugeSet())
        registry.register(registry.name("JVM", "GarbageCollector"), new GarbageCollectorMetricSet())
        registry.register(registry.name("JVM", "BufferPool"), new BufferPoolMetricSet(ManagementFactory.getPlatformMBeanServer()))
        registry.register(registry.name("JVM", "ThreadStates"), new ThreadStatesGaugeSet())
        registry.register(registry.name("JVM", "FileDescriptorRatio"), new FileDescriptorRatioGauge())
        ObjectName name = new ObjectName("java.lang:type=OperatingSystem")
        registry.register(registry.name("OS", "SystemCpuLoad"), new JmxAttributeGauge(name, "SystemCpuLoad"))
        registry.register(registry.name("OS", "ProcessCpuLoad"), new JmxAttributeGauge(name, "ProcessCpuLoad"))
        registry.register(registry.name("OS", "SystemLoadAverage"), new JmxAttributeGauge(name, "SystemLoadAverage"))

        ConsoleReporter reporter = ConsoleReporter.forRegistry(registry)
            .convertRatesTo(TimeUnit.SECONDS)
            .convertDurationsTo(TimeUnit.MILLISECONDS)
            .build();
        reporter.start(5, TimeUnit.SECONDS);

        final JmxReporter jmxReporter = JmxReporter.forRegistry(registry).build();
        jmxReporter.start();

        StatsDReporter statsDReporter = StatsDReporter
                .forRegistry(registry)
                .prefixedWith("abcde")
                .convertRatesTo(TimeUnit.SECONDS)
                .convertDurationsTo(TimeUnit.MILLISECONDS)
                .filter(MetricFilter.ALL)
                .build("localhost", 8125)
        statsDReporter.start(5, TimeUnit.SECONDS)
        return new Metrics(registry)
    }
}

