# Venture Destinations is an application to find experiences related to travelling, adventure and sports
# Copyright (C) 2020 Venture Destinations

# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public 
# License as published by the Free Software Foundation; either version 2 of the License.

# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more 
# details.

# You should have received a copy of the GNU General Public License along with this program; if not, write to the 
# Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

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


    Scenario Outline: Set physical demand preferences
        Given <user> is a traveller
        And I am logged in as <user>
        And I am in the update profile screen
        When I choose <demanding> activities
        And I click in update profile
        Then my preference for <demanding> activities is set

        Examples:
            | user          | demanding        |
            | USER1         | Not demanding    |
            | lazy.loader   | Low demanding    |
            | test.user     | Medium demanding |
            | fitness.freak | High demanding   |

    Scenario Outline: Set favourite locations
        Given <user> is a traveller
        And the location at <latitude> and <longitude> is not a favourite location for <user>
        And I am logged in as <user>
        When I click in the location at <latitude> and <longitude> in the location map
        And I click in update profile
        Then the location at <latitude> and <longitude> is set as favourite location for <user>

        Examples:
            | user        | latitude    | longitude    |
            | bumbury1    | 14°35′45″N  | 120°58′38″E  | # Manila
            | boomer.life | 37°23′24″N  | 5°59′24″W    | # Seville 

    Scenario Outline: Remove favourite locations
        Given <user> is a traveller
        And the location at <latitude> and <longitude> is a favourite location for <user>
        And I am logged in as <user>
        When I click in the location at <latitude> and <longitude> in the location map
        And I click in update profile
        Then the location at <latitude> and <longitude> is unset as favourite location for <user>

        Examples:
            | user        | latitude    | longitude    |
            | bumbury1    | 14°35′45″N  | 120°58′38″E  | # Manila
            | boomer.life | 37°23′24″N  | 5°59′24″W    | # Seville 

    Scenario: Set favourite activities
        Given <user> is a traveller
        And <activity> is not set as a favourite activity for <user>
        And I am logged in as <user>
        And I am in the update profile screen
        When I check <activity> as a favourite activity
        And I click in update profile
        Then <activity> is set as a favourite activity for <user>

        Examples:
            |  user  |  activity    |
            | sporty | Kite Surf    |
            | mind   | Chess        |

    Scenario: Set favourite activity with new activity
        Given <user> is a traveller
        And <activity> is not registered as an option for favourite activity
        And I am logged in as <user>
        And I am in the update profile screen
        When I click in add new favourite activity
        And I type <activity> in the activity name
        And I choose <category> as the activity category
        And I click add new activity
        And I click in update profile
        Then <activity> is created in the system 
        And <activity> is set as a favourite activity for <user>

        Examples:
            |  user  |  activity    | category  |
            | sporty | Kite Surf    | Water     |
            | mind   | Chess        | Mind      |

    Scenario Outline: Setting percentage for Nature & Sport activities
        Given <user> is a traveller
        And I am logged in as <user>
        And my percentage for Nature & Sport activities is set to <nature-original>
        And my percentage for Free time activities is set to <free-time-original>
        And my percentage for Culture activities is set to <culture-original>
        When I type <nature-new> in the Nature & Sport percentage field
        Then the value for Free time activities is set to <free-time-new>
        And the value for Culture activities is set to <culture-new>

        Examples:
            | user    | nature-original | free-time-original | culture-original | nature-new | free-time-new | culture-new |
            | test1   | 33              | 33                 | 34               | 43         | 28            | 29          |
            | lolious | 60              | 20                 | 20               | 30         | 35            | 35          |


    Scenario Outline: Setting percentage for Free time activities
        Given <user> is a traveller
        And I am logged in as <user>
        And my percentage for Nature & Sport activities is set to <nature-original>
        And my percentage for Free time activities is set to <free-time-original>
        And my percentage for Culture activities is set to <culture-original>
        When I type <free-time-new> in the Free time percentage field
        Then the value for Nature & Sport activities is set to <nature-new>
        And the value for Culture activities is set to <culture-new>

        Examples:
            | user    | nature-original | free-time-original | culture-original | nature-new | free-time-new | culture-new |
            | test1   | 33              | 33                 | 34               | 43         | 28            | 29          |
            | lolious | 60              | 20                 | 20               | 30         | 35            | 35          |

    Scenario Outline: Setting percentage for Culture activities
        Given <user> is a traveller
        And I am logged in as <user>
        And my percentage for Nature & Sport activities is set to <nature-original>
        And my percentage for Free time activities is set to <free-time-original>
        And my percentage for Culture activities is set to <culture-original>
        When I type <culture-new> in the Culture percentage field
        Then the value for Nature & Sport activities is set to <nature-new>
        And the value for Free time activities is set to <free-time-new>

        Examples:
            | user    | nature-original | free-time-original | culture-original | nature-new | free-time-new | culture-new |
            | test1   | 33              | 33                 | 34               | 43         | 28            | 29          |
            | lolious | 60              | 20                 | 20               | 30         | 35            | 35          |
        
    Scenario Outline: Set percentages of activity aspects
        Given <user> is a traveller
        And I am logged in as <user>
        And I am in the update profile screen
        When I choose <nature> percent for Nature & Sport
        And I choose <free-time> percent for Free time
        And I choose <culture> percent for culture
        And I click in update profile
        Then my activity aspects are updated

        Examples:
            |  user          | nature | free-time | culture |
            | test.user      | 40     | 50        | 10      |
            | user2          | 35     | 20        | 45      |

    Scenario Outline: Setting public profile properly
        Given <user> is a traveller
        And I am logged in as <user>
        And I am in the update profile screen
        When I type <profile> in the profile field
        And I click in update profile
        Then my profile gets updated to <profile>

        Examples:
            |   user   | profile           |
            | test.user| Test              |
            | rob      | This is who I am  |

    Scenario Outline: Setting a public profile longer than 200 characters
        Given <user> is a traveller
        And I am logged in as <user>
        And I am in the update profile screen
        When I type <profile> in the profile field
        And I click in update profile
        Then I get a profile too long error

        Examples:
            | user       | profile                                                                                                                                                                                                                                                                                                                                                                                                        |  
            | test.user  | T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T| 

        
