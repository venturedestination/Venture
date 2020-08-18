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

import io.cucumber.java8.*

class StepDefinitions : En {
    init {
        Given("I am in the log in screen") {
        }

        Given("^I am registered with user name (\\S+)$") { userName: String ->
        }

        Given("^my password is (\\S+)$") { password: String ->
        }

        Given("I am in the registration form") {
        }

        Given("^the user name (.+) is (available|already registered)$") { typedUser: String, status: String ->
        }

        Given("^I cannot find \"(.+)\" in the list of favourite sports$") { missingSport: String ->
        }

        Given("^(.+) is a traveller$") { userName: String ->
        }

        Given("^I am logged in as (.+)$") { userName: String ->
        }

        Given("I am in the update profile screen") {
        }

        Given("I am not registered as an organizer") {
        }

        Given("I am in the organizer registration screen") {
        }

        Given("^the location at (\\d{1,3}.\\d{1,3}.\\d{1,3}.(N|S)) and (\\d{1,3}.\\d{1,3}.\\d{1,3}.(W|E)) is a favourite location for (.+)$") { latitude: String, longitude: String, userName: String ->
        }

        Given("^the location at (\\d{1,3}.\\d{1,3}.\\d{1,3}.(N|S)) and (\\d{1,3}.\\d{1,3}.\\d{1,3}.(W|E)) is not a favourite location for (.+)$") { latitude: String, longitude: String, userName: String ->
        }

        Given("^(.+) is not set as a favourite activity for (.+)$") { activity: String, user: String ->
        }

        Given("^(.+) is not registered as an option for favourite activity$") { activity: String ->
        }

        Given("^my percentage for (.+) activities is set to (\\d{1,3})$") { activityType: String, percent: Int ->
        }

        When("^I type (\\S+) in the password field$") { typedPassword: String ->
        }

        When("^I type (\\S+) in the repeat password field$") { typedPassword: String ->
        }

        When("^I type (.+) in the user name field$") { typedUser: String ->
        }

        When("^I type (\\S+) in the email field") { email: String ->
        }

        When("^I type (\\S+) in the first name field") { firstName: String ->
        }

        When("^I type (\\S+) in the last name field") { lastName: String ->
        }

        When("^I type (.+) in the public description field$") { description: String ->
        }

        When("I select a profile picture") {
        }

        When("^I select (.+) as my language preference$") { preferredLanguage: String ->
        }

        When("^I set (.+) as (my|a) preferred location$") { preferredLocation: String, _:String ->
        }

        When("^I set \"(.+)\" as my favourite (air|land|water|mind) activity$") { activity: String, type: String ->
        }

        When("^I type \"(.+)\" in the new sport name field$") { sportName: String ->
        }

        When("^I rate (.+) as (\\d+)%$") { activity: String, rate: Int ->
        }

        When("^I set my birthdate to (\\d{1,2}/\\d{1,2}/\\d{4})$") { date: String ->
        }

        When("I click log in") {
        }

        When("I click in register") {
        }

        When("I click Register Organizer") {
        }

        When("I click in Confirm") {
        }

        When("^I choose (.+) demanding activities") { demandType: String ->
        }

        When("I click on pick a picture") {
        }

        When("I select a picture") {
        }

        When("^I click in the location at (\\d{1,3}.\\d{1,3}.\\d{1,3}.(N|S)) and (\\d{1,3}.\\d{1,3}.\\d{1,3}.(W|E)) in the location map$") { latitude: String, longitude: String ->
        }

        When("I click in update profile") {
        }

        When("^I check (.+) as a favourite activity$") { activity: String ->
        }

        When("I click in add new favourite activity") {
        }

        When("^I type (.+) in the activity name$") { activity: String ->
        }

        When("^I choose (.+) as the activity category$") { category: String ->
        }

        When("I click add new activity") {
        }

        When("^I choose (\\d{1,3}) percent for (.+)$") { percent: Int, aspect: String ->
        }

        When("^I type (\\d{1,3}) in the (.+) percentage field$") { percent: Int, activityType: String ->
        }

        When("^I type (.+) in the profile field") { profile: String ->
        }

        Then("I get to my account screen") {
        }

        Then("I get to my dashboard") {
        }

        Then("I get a wrong user name or password error") {
        }

        Then("^I receive an email confirming my registration in (.+)$") { email: String ->
        }

        Then("I get invalid password error") {
        }

        Then("I get an invalid email error") {
        }

        Then("I get a user name already registered error") {
        }

        Then("^my preference for (.+) demanding activities is set") { demandType: String ->
        }

        Then("I get a confirmation that my profile picture has been set") {
        }

        Then("I get a passwords do not match error") {
        }

        Then("I get a successful registration confirmation") {
        }

        Then("^the location at (\\d{1,3}.\\d{1,3}.\\d{1,3}.(N|S)) and (\\d{1,3}.\\d{1,3}.\\d{1,3}.(W|E)) is (set|unset) as favourite location for (.+)$") { latitude: String, longitude: String, op: String, user: String ->
        }

        Then("^(.+) is set as a favourite activity for (.+)$") { activity: String, user: String ->
        }

        Then("^(.+) is created in the system$") { activity: String ->
        }

        Then("my activity aspects are updated") {
        }

        Then("^the value for (.+) activities is set to (\\d{1,3})$") { activityType: String, percent: Int ->
        }

        Then ("^my profile gets updated to (.+)$") { profile: String ->
        }

        Then("I get a profile too long error") {
        }
    }
}
