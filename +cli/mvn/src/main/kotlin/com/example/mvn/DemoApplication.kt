// https://stackoverflow.com/questions/34207920/configurationproperties-on-fields
// https://newbedev.com/spring-boot-yaml-configuration-for-a-list-of-strings

package com.example.mvn

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import javax.annotation.PostConstruct
import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Configuration
import org.springframework.boot.context.properties.ConfigurationProperties
import org.slf4j.LoggerFactory

@SpringBootApplication
class DemoApplication

fun main(args: Array<String>) {
	runApplication<DemoApplication>(*args)
}

@Configuration
@ConfigurationProperties(prefix="sample")
public class Sample {
    private val log = LoggerFactory.getLogger(this::class.java)

    @Value("\${sample.str}")
	var str: String = ""
    var a: Int = 0
    var sub: Sub = Sub()

    @ConfigurationProperties(prefix="sample.sub")
    public class Sub {
        var list: MutableList<String> = mutableListOf()
        var b: Int = 0
    }
	
    @PostConstruct
    fun run() {
		log.info("str: $str, a: $a")
        log.info("sub b: ${sub.b}, sub list size: ${sub.list.size}")
	}
}