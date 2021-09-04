# Demo project for Maven CLI
This project is created by:
```
spring init --dependencies=web,data-jpa --build=maven --java-version=11 -l kotlin mvnff
```

## Run
```
mvnw spring-boot:run
```

## Settings

```
mvn -X
```
[Find out which settings.xml file maven is using](https://stackoverflow.com/questions/9988814/how-do-i-find-out-which-settings-xml-file-maven-is-using)

## Dependencies
```
mvn dependency:tree
```

```
mvn dependency:tree -Dincludes=com.microsoft.sqlserver
```
From <https://app.slack.com/client/T09D77D4P/DKKGDEQJK/thread/GK7A394Q6-1563865473.066600> 

System dependencies
```
<dependency>
   <groupId>sun.jdk</groupId>
   <artifactId>tools</artifactId>
   <version>1.5.0</version>
   <scope>system</scope>
   <systemPath>${java.home}/../lib/tools.jar</systemPath>
</dependency>
```
From <http://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html#System_Dependencies> 

## Install
```
mvn install
```

```
mvn install:install-file \
   -Dfile=<path-to-file> \
   -DgroupId=<group-id> \
   -DartifactId=<artifact-id> \
   -Dversion=<version> \
   -Dpackaging=<packaging> \
   -DgeneratePom=true
```
From <https://stackoverflow.com/questions/4955635/how-to-add-local-jar-files-to-a-maven-project> 
Best way to add local jar to a Maven project

```
mvn install:install-file -Dfile=your-artifact-1.0.jar \
                         [-DpomFile=your-pom.xml] \
                         [-Dsources=src.jar] \
                         [-Djavadoc=apidocs.jar] \
                         [-DgroupId=org.some.group] \
                         [-DartifactId=your-artifact] \
                         [-Dversion=1.0] \
                         [-Dpackaging=jar] \
                         [-Dclassifier=sources] \
                         [-DgeneratePom=true] \
                         [-DcreateChecksum=true]
```
From <https://maven.apache.org/plugins/maven-install-plugin/usage.html#The_install:install-file_goal> 

Use -DpomFile to copy current dependencies to repository, otherwise when importing, dependencies are not imported

```
mvn install:install-file -Dfile=target/?????.jar -Dsources=target/?????-sources.jar -DgroupId=org.some.group -DartifactId=your-artifact -Dversion=1.0 -Dpackaging=jar -DpomFile=pom.xml -DcreateChecksum=true
```

## Compile and install
```
mvn clean install
```

```
mvn jar:jar install:install
```

```
mvn clean compile jar:jar install:install
```
From <https://stackoverflow.com/questions/6308162/maven-the-packaging-for-this-project-did-not-assign-a-file-to-the-build-artifac> 

```
mvn -Djar.finalName=myCustomName ...
```
From <https://stackoverflow.com/questions/4238944/controlling-maven-final-name-of-jar-artifact> 

## Others
```
mvn versions:set -DnewVersion=2.50.1-SNAPSHOT
```
From <https://stackoverflow.com/questions/5726291/updating-version-numbers-of-modules-in-a-multi-module-maven-project> 

```
mvn deploy:deploy 
```
on the other hand does only execute the deploy goal of the maven-deploy-plugin
From <https://stackoverflow.com/questions/33926182/maven-deploy-the-packaging-for-this-project-did-not-assign-a-file-to-the-build/33966079>

## Tests
```
mvn test
```

```
mvn -Dit.test=ITSquare,ITCi*le verify
```
From <https://maven.apache.org/surefire/maven-failsafe-plugin/examples/single-test.html> 

```
mvn surefire:test
```
From <https://stackoverflow.com/questions/14867073/how-can-i-atomically-run-mvn-tests-without-rebuilding-source-code> 

```
mvn test -Dtest=**/*Integration
```
Running Integration Tests With Maven	
We can run integration tests with Maven by using the Maven Failsafe Plugin.
From <https://www.testwithspring.com/lesson/running-integration-tests-with-maven/> 

## Package

```
mvn jar:jar
```

```
mvn package
```

```
<build>
    <plugins>
        <plugin> 
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-dependency-plugin</artifactId>
            <version>2.8</version>
            <executions>
                <execution>
                    <id>copy-dependencies</id>
                    <phase>prepare-package</phase>
                    <goals>
                        <goal>copy-dependencies</goal>
                    </goals>
                    <configuration>
                        <outputDirectory>${project.build.directory}/classes/lib</outputDirectory>
                        <includeScope>runtime</includeScope>
                    </configuration>
                </execution>
            </executions>
        </plugin>
    </plugins>
</build>
```

```
mvn package
```
From <https://www.geekality.net/2013/09/12/maven-package-runtime-dependencies-in-lib-folder-inside-packaged-jar/> 

```
<plugin>
   <groupId>org.codehaus.mojo</groupId>
   <artifactId>exec-maven-plugin</artifactId>
   <version>1.6.0</version>
   <executions>
      <execution>
      <goals>
         <goal>exec</goal>
      </goals>
      </execution>
   </executions>
   <configuration>
      <executable>java</executable>
      <arguments>
         <argument>-cp</argument>
         <argument>target/api-1.0-SNAPSHOT.jar</argument>
         <argument>-Dorg.eclipse.jetty.util.log.classrg.eclipse.jetty.util.log.StdErrLog</argument>
         <argument>com.otsample.api.App</argument>
         <argument>./tracer_config.properties</argument>
      </arguments>
   </configuration>
</plugin>
```

```
mvn package exec:exec
```



# References

- https://mvnrepository.com/
- [Introduction to the Dependency Mechanism](https://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html) 
- [Package-specific Lifecycles](https://books.sonatype.com/mvnref-book/reference/lifecycle-sect-package-specific.html)
- [Dependency Scope](https://maven.apache.org/guides/introduction/introduction-to-dependency-mechanism.html)