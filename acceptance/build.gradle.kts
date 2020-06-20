plugins {
    kotlin("jvm") version "1.3.72"
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    testImplementation("io.cucumber:cucumber-java8:2.3.1")
    testImplementation("io.cucumber:cucumber-junit:2.3.1")
}
