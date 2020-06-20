Feature: Traveller registration
    As a non-registered user
    I want to get registered 
    So that I can join activites & communicate with communities and experiences organizer

    Scenario: Successful registration
        Given I am in the registration form 
        And the user name test user is available
        When I type test user in the user name field
        And I type password in the password field
        And I type password in the repeat password field
        And I type testuser@gmail.com in the email field
        And I type Test in the first name field
        And I type User in the last name field
        And I type "I like hiking and climbing" in the public description field
        And I select a profile picture
        And I select British English as my language preference
        And I set "Manila" as a preferred location
        And I set "Tokyo" as a preferred location
        And I set "Philadelphia" as a preferred location
        And I set "Parachuting" as my favourite air activity
        And I set "Hiking" as my favourite land activity
        And I set "Surfing" as my favourite water activity
        And I set "Chess" as my favourite mind activity
        And I rate Outdoor sports and sightseeing as 100%
        And I rate Mind activities as 50%
        And I rate Cultural activites as 65%
        And I set my birthdate to 15/08/1990
        And I click in register
        Then I get to my dashboard
        And I receive an email confirming my registration in testuser@gmail.com

    Scenario: Successful registration with custom favourite sport
        Given I am in the registration form 
        And the user name test user is available
        And I cannot find "Kite surf" in the list of favourite sports
        When I type test user in the user name field
        And I type password in the password field
        And I type password in the repeat password field
        And I type testuser@gmail.com in the email field
        And I type Test in the first name field
        And I type User in the last name field
        And I type "I like hiking and climbing" in the public description field
        And I select a profile picture
        And I select Castillian Spanish as my language preference
        And I set my birthdate to 15/08/1990
        And I rate Outdoor sports and sightseeing as 100%
        And I rate Mind activities as 50%
        And I rate Cultural activites as 65%
        And I set "Manila" as a preferred location
        And I set "Tokyo" as a preferred location
        And I set "Philadelphia" as a preferred location
        And I set "Parachuting" as my favourite air activity
        And I set "Hiking" as my favourite land activity
        And I set "Chess" as my favourite mind activity
        And I set "New Sport" as my favourite water activity
        And I type "Kite Surf" in the new sport name field
        And I click in Confirm
        And I click in register
        Then I get to my dashboard
        And I receive an email confirming my registration in testuser@gmail.com

    Scenario: traveller name already exists
        Given the user name jackie.chan is already registered
        And I am in the registration form
        When I type jackie.chan in the user name field
        Then I get a user name already registered error

    Scenario Outline: traveller email is invalid
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
