import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
plugins {
	kotlin("jvm") version "1.5.21"
}

group = "com.example"
version = "0.0.1-SNAPSHOT"
java.sourceCompatibility = JavaVersion.VERSION_11

repositories {
	mavenCentral()
}

// https://docs.gradle.org/nightly/userguide/migrating_from_groovy_to_kotlin_dsl.html#configuring-tasks
// tasks.bootJar {
//     mainClassName = "HelloWorld"
// }

// https://stackoverflow.com/questions/28345705/how-can-i-add-a-generated-source-folder-to-my-source-path-in-gradle
// https://stackoverflow.com/questions/39417891/gradle-exclude-file-from-sourceset-not-working
sourceSets["main"].java.srcDir(file("."))
sourceSets["main"].java.setIncludes(setOf("HelloWorld.kt"))
sourceSets["test"].java.srcDir(file("."))
sourceSets["test"].java.setIncludes(setOf("*.kt"))

dependencies {
	implementation("org.jetbrains.kotlin:kotlin-reflect")
	implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")
	implementation("io.kotlintest:kotlintest-runner-junit5:3.3.2")
	implementation("org.junit.jupiter:junit-jupiter-api:5.2.0")

	testImplementation("io.kotlintest:kotlintest-runner-junit5:3.3.2")
	testImplementation("org.junit.jupiter:junit-jupiter-api:5.2.0")
	testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine:5.2.0")
}

tasks.withType<KotlinCompile> {
	kotlinOptions {
		freeCompilerArgs = listOf("-Xjsr305=strict")
		jvmTarget = "11"
	}
}

tasks.withType<Test> {
	useJUnitPlatform()
}
