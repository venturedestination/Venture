/*
Venture Destinations is an application to find experiences related to travelling, adventure and sports
Copyright (C) 2020 Venture Destinations

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public 
License as published by the Free Software Foundation; either version 2 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more 
details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the 
Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

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
