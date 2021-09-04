# Demo project for Gradle CLI
This project is created by:
```
spring init --dependencies=web,data-jpa --build=gradle --java-version=11 -l kotlin gradle
```

## Run

Run Spring boot Application  
https://javadeveloperzone.com/spring-boot/spring-boot-gradle-example/

```
gradlew bootRun
```

[How to clear gradle cache?](https://stackoverflow.com/questions/23025433/how-to-clear-gradle-cache)
- $HOME/.gradle/cache
- The --no-build-cache option will run gradle without the build cache

## Build
```
gradlew build
```

## Java version

- [How do I tell Gradle to use specific JDK version?](https://stackoverflow.com/questions/18487406/how-do-i-tell-gradle-to-use-specific-jdk-version)
- [please try org.gradle.java.home=C:/Program Files/Java/jdk1.8.0_121](https://stackoverflow.com/questions/42080335/cant-set-a-windows-based-path-in-gradle-properties)



## Other

Android Studio
```
Try to add the 'org.gradle.daemon=true' inside gradle.properties file at
/Users/<username>/.gradle/ (Mac)
C:\Users\<username>\.gradle (Windows)
```
From <https://stackoverflow.com/questions/37531536/jvm-arguments-gradle-cannot-be-set-in-gradle-properties-file-for-android-studio>

# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Gradle documentation](https://docs.gradle.org)
* [Spring Boot Gradle Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.5.4/gradle-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/2.5.4/gradle-plugin/reference/html/#build-image)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.5.4/reference/htmlsingle/#boot-features-developing-web-applications)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/2.5.4/reference/htmlsingle/#boot-features-jpa-and-spring-data)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)

