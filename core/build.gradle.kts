plugins {
    kotlin("multiplatform") version "1.3.72"
}

kotlin {
    jvm()
    js()
    iosArm32()
    iosArm64()
    iosX64()

    sourceSets {
        val commonMain by getting {
            dependencies {
                implementation(kotlin("stdlib-common"))
            }
        }

        val commonTest by getting {
            dependencies {
                implementation(kotlin("test-commons"))
                implementation(kotlin("test-annotations"))
            }
        }
    }
}
