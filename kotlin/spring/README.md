# Spring boot project for Kotlin

Include both coroutine API and non coroutine API.

## Coroutine

[Error creating bean with name 'requestMappingHandlerMapping' with kotlin suspend function in spring-boot - Stack Overflow](https://stackoverflow.com/questions/61381727/error-creating-bean-with-name-requestmappinghandlermapping-with-kotlin-suspend)

    Basically `spring-boot-starter-webflux` brings support for suspened functions.

[Non-Blocking Spring Boot with Kotlin Coroutines | Baeldung on Kotlin](https://www.baeldung.com/kotlin/spring-boot-kotlin-coroutines)

    <dependency>
        <groupId>org.jetbrains.kotlin</groupId>
        <artifactId>kotlin-reflect</artifactId>
    </dependency>
    <dependency>
        <groupId>org.jetbrains.kotlin</groupId>
        <artifactId>kotlin-stdlib-jdk8</artifactId>
    </dependency>
    <dependency>
        <groupId>org.jetbrains.kotlinx</groupId>
        <artifactId>kotlinx-coroutines-core</artifactId>
    </dependency>
    <dependency>
        <groupId>org.jetbrains.kotlinx</groupId>
        <artifactId>kotlinx-coroutines-reactor</artifactId>
    </dependency>