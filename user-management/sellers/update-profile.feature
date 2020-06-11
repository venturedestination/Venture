Feature: Update seller profile
    As a seller 
    I want to update my profile
    So that the right buyers can find me

    Scenario: Set profile picture
        Given I am logged in as best.seller
        And I am in the update profile screen
        When I select land activities in favourite sports
        And I select water activities in favourite sports
        And I select air activities in favourite sports
        And I select snow activities in favourite sports
        And I select mind activities in favourite sports
        Then I get a confirmation that my favourite sports have been set
