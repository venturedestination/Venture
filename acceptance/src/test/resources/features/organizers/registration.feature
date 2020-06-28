@ignore
Feature: Organizer registration
    As a new user
    I want to become an organizer
    So that I can create experiences

    Background:
        Given I am not registered as an organizer
        And I am in the organizer registration screen


    Scenario Outline: Successful registration
        When I type <email> in the email field
        And I type <username> in the user name field
        And I type <password> in the password field
        And I type <password> in the repeat password field
        And I type <first-name> in the first name field
        And I type <last-name> in the last name field
        And I select <language> as my language preference
        And I click Register Organizer
        Then I get a successful registration confirmation

        Examples:
            | email                   | username  |    password   | first-name  | last-name    | language             |
            | test@user.com           | test.user | password1     | Test        | User         | British English      |
            | spiderham@google.com    | spiderham | p0rkb3lly     | Peter       | Porker       | Cantonese Chinese    |

    Scenario Outline: Invalid email
        When I type <email> in the email field
        Then I get an invalid email error

        Examples:
            |  email                |
            | avalancha             |
            | 1234                  |
            | user@party            |
            | lol.boy@google        |


    Scenario Outline: Password doesn't meet the criteria
        When I type <password> in the password field
        Then I get invalid password error

        Examples:
            | password    |
            | n           |
            | 1           |
            | no          |
            | n0          |
            | abcdef      |
            | 123456      |

    Scenario Outline: Passwords do not match
        When I type <password> in the password field
        And I type <repeated-password> in the repeat password field
        Then I get a passwords do not match error

        Examples:
            |    password   | repeated-password   |
            | password1     | Password1           |
            | p0rkb3lly     | porkb3lly           |

    Scenario Outline: User name already exist
        Given the user name <username> is already registered 
        When I type <username> in the user name field
        Then I get a user name already registered error

        Examples:
            |  username |
            | spiderham |
            | test.user |
