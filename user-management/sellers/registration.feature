Feature: User registration
    As a non-registered user
    I want to register
    so that I can join activities

    Scenario: Successful registration
        Given I am not a registered user
        And I am in the registration form
        And the user name testuser is available
        When I type testuser in the user name field
        And I type password in the password field
        And I type password in the repeat password field
        And I type testuser@gmail.com in the email field
        And I type Test in the first name field
        And I type User in the last name field
        And I click in register
        Then I get to my dashboard
        And I receive an email confirming my registration in testuser@gmail.com

    Scenario: User name already exists
        Given the user name jackie.chan is already registered
        And I am in the registration form
        When I type jackie.chan in the user name field
        Then I get a user name already registered error

    Scenario Outline: User email is invalid
        Given I am in the registration form
        When I type <email> in the email field
        Then I get an invalid email error

        Examples:
            | email        |
            | lol          |
            | lol.com      |
            | false@google |

    Scenario Outline: User password does not meet the requirements
        Given I am in the registration form
        When I type <password> in the password field
        Then I get invalid password error

        Examples:
            | password |
            | a        |
            | 1        |
            | a1       |
            | lol      |
            | abcdef   |
            | 123456   |

