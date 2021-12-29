// https://docs.gradle.org/current/userguide/application_plugin.html
// https://stackoverflow.com/questions/14733566/how-to-run-kotlin-class-from-the-command-line

import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
plugins {
	kotlin("jvm") version "1.5.21"
	application
}

group = "com.example"
version = "0.0.1-SNAPSHOT"
java.sourceCompatibility = JavaVersion.VERSION_11

repositories {
	mavenCentral()
}

application {
    mainClass.set("FailInVSCode")
}

sourceSets["main"].java.srcDir(file("."))
sourceSets["main"].java.setIncludes(setOf("FailInVSCode.kt"))

val coroutines_version by extra { "1.5.1" }
dependencies {
	implementation("org.jetbrains.kotlin:kotlin-stdlib")
	implementation("org.jetbrains.kotlin:kotlin-reflect")
    implementation("org.jetbrains.kotlinx:kotlinx-serialization-json:1.2.2")

    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:$coroutines_version")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-swing:$coroutines_version")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-jdk8:$coroutines_version")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-slf4j:$coroutines_version")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-debug:$coroutines_version")
}

tasks.withType<KotlinCompile> {
	kotlinOptions {
		freeCompilerArgs = listOf("-Xjsr305=strict")
		jvmTarget = "11"
	}
}