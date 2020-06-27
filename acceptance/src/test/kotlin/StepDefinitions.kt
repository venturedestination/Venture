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

        When("I click in Confirm") {
        }

        When("^I choose (.+) demanding activities") { demandType: String ->
        }

        When("I click on pick a picture") {
        }

        When("I select a picture") {
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
    }
}
