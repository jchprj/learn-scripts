# [Spring Boot CLI](https://docs.spring.io/spring-boot/docs/current/reference/html/spring-boot-cli.html)

## Install

[Getting Started](https://docs.spring.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started-installing-spring-boot)


## Run

```
spring run ?????.groovy
```

To pass command-line arguments to the application, use `--` to separate the commands from the “spring” command arguments, as shown in the following example:

```
spring run ?????.groovy -- --server.port=9000
```


For some scenarios such as JPA, Spring CLI does not work well especially for class discoveries, see details in [Spring CLI: not work well with spring-data-jpa · Issue #15777 · spring-projects/spring-boot · GitHub](https://github.com/spring-projects/spring-boot/issues/15777). From the answer, the solution is like this:

```
spring jar temp_test.jar ?????.groovy && java -jar temp_test.jar
```

## Package

```
spring jar my-app.jar *.**groovy**
```

## Extensions
```
spring install com.example:spring-boot-cli-extension:1.0.0.RELEASE
```

```
spring uninstall com.example:spring-boot-cli-extension:1.0.0.RELEASE
```

```
spring uninstall --all
```

## Initialize normal project
Example
```
spring init --dependencies=web,data-jpa --build=gradle --java-version=11 -l kotlin temp_test
```

List the capabilities of the service. Use it to discover the dependencies and the types that are available
```
spring init --dependencies=web,data-jpa --build=gradle --java-version=11 -l kotlin temp_test
```

## Reference
- [Spring Boot in a Single File | Rezha Julio](https://rezhajul.io/spring-boot-in-a-single-file/)
- [Introduction to Spring Boot CLI | Baeldung](https://www.baeldung.com/spring-boot-cli)