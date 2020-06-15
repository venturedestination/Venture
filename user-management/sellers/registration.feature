Feature: traveller registration
As a non-registered user
I want to register my Favourite & favourites Sport during registration.
So that I can be offered with best experiences according my favourite Sports.
    
        Scenario:
        Given: I am in the traveller registration.
        When: I select land activities in favourite sports
        And: I select water activities in favourite sports
        And: I select air activities in favourite sports
        And: I select mind activities in favourite sports
        Then: I chose my favourite one from all favourite sport chosen above.
        Then: I get a confirmation that my favourite sports and favourites registration have been set
  
        
        Scenario Outline: If my favourite sport is not in the list.
        Given I am in the registration form 
        And: I cannot find my favourite sport in the list
        Then: I click to add a new Sport to the list
        Then: I choose the element category from water, air, land or mind I sport belongs to.
        When: I type the new favourite sport at the field.
        Then: I Press submit proposal for its inclusion in the sport list.
        And: As long as I choose any sport form the list
        Then: I get a confirmation that my favourite sports and favourites registration have been set
    
Feature: traveller registration
As a non-registered user
I want to register my destination preferences 
so that I can be offered with best experiences available accordingly 
       
    Scenario
    Given I am in the registration form 
    And: I want to register my preferences
    Then: I choose my 3 current favourite destination 
    Then: I get asked which three locations in the world I like to visit the most currently. 
    Then: I click 3 locations from the map 
    And: I get a confirmation that my destination preferences have been set
 
  
  Feature: traveller registration
    As a non-registered user
    I want to register my travel spending time preferences 
    So that I can be offered with best experiences available accordingly 
    
    Scenario:
    Given I am in the registration form 
    Then: System provide with 3 categories to be rated
    And: I click my travel spending time preferences out of 100%
    Then: I add my favourite % travel time dedicated to category 1 (Outdoor Sport or Nature or Landscapes or Sightseeing).
    Then: I add favourite % time travel dedicated to category 2 (Relax or free time or Mind Activities)  
    And: I add favourite % time travel dedicated to category 3 (People or Culture or Music & Gastronomy).
    Example: (Nature & sports 40% and Relax 30% and culture 30% of the time (=100%)
    And: I get a confirmation that my travel preferences have been set
      
    Feature: User registration
    As a non-registered user
    I want to register my physical activity demanding preferences for Experience 
    so that I can be offered with the most suitable experiences available accordingly 
    
    Scenario
    Given I am in the registration form 
    Then: I want to register my physical demanding preferences for the activity/Experience. 
    Then: I get asked for my physical demand preference
    And: If I look for High Demanding physical activity experience.
    Then: I choose preferably Demanding experiences
    Then: If my physical commitment is medium.
    Then: I chose preferably physical activity regular Demanding experiences
    And: If I am not looking for physical demanding activities.
    Then: I choose preferably not demanding activities.
    Then: I select my year of birth. 
    And: I push submit information
    And: System records traveller physical experiences preferences & age
    And: I get a confirmation that my physical activity preferences for the experiences has been set
    (example:USER1= Not demanding activities, from year 1981)
    
 Feature: User registration
 As a non-registered user
 I want to get registered 
 So that I can join activites & communicate with communities and experiences organizer
    
    Scenario: 
        Given I am in the registration form 
        And the user name test user is available
        When I type test user in the user name field
        And I type password in the password field
        And I type password in the repeat password field
        And I type testuser@gmail.com in the email field
        And I type Test in the first name field
        And I type User in the last name field
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
      
  Then: I provide a brief public descrption text with things I like to do in life. 
  Then: I set my picture porfile form list of by default sport/activity icons or browse it from my PC 
  Then: I choose my language preferences in order to communicate with me. 

Scenario outline: Unsuccessful registration
        Given: I am in the registration form.
        And: I try to submit already complimented registration from 
        And: There is still any gap not completed yet or incorrect.
        Then System will redirect me to gap failed 
        And: in order to be filled properly
        Then: I place correct info, 
        When: I see all in order
        Then: I submit registration form
        Then: E-mail it is setn to my personal email personal accoount provided.
        And: I Received a message at my personal account. 
        When: I click in the link for email confirmation. 
        Then: System redirects me back to www.venturedestination.com 
        And: I now, can have access, to my Traveller profile.



