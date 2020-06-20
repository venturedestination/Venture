Feature: Update traveller profile
    As a traveller 
    I want to update my profile
    So that I can find the right experiences

    Scenario: Set profile picture
        Given best.seller is a traveller
        And I am logged in as best.seller
        And I am in the update profile screen
        When I click on pick a picture
        And I select a picture
        Then I get a confirmation that my profile picture has been set


    Scenario Outline: Set physical activity preferences
        Given <user> is a traveller
        And I am logged in as <user>
        And I am in the update profile screen
        When I choose <demanding> activities
        Then my preference for <demanding> activities is set

        Examples:
            | user          | demanding        |
            | USER1         | Not demanding    |
            | lazy.loader   | Low demanding    |
            | test.user     | Medium demanding |
            | fitness.freak | High demanding   |
