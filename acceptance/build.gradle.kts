plugins {
    kotlin("jvm") version "1.3.72"
}

tasks {
    test {
        ignoreFailures = true
    }
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    testImplementation("io.cucumber:cucumber-java8:6.1.1")
    testImplementation("io.cucumber:cucumber-junit:6.1.1")
}
