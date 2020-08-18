# Venture Destinations is an application to find experiences related to travelling, adventure and sports
# Copyright (C) 2020 Venture Destinations

# This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public 
# License as published by the Free Software Foundation; either version 2 of the License.

# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more 
# details.

# You should have received a copy of the GNU General Public License along with this program; if not, write to the 
# Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

Feature: Seller log in
    As a seller
    I want to log in
    So that I can manage my activities.

    Scenario Outline: Successful log in
        Given I am in the log in screen
        And I am registered with user name <user>
        And my password is <password>
        When I type <user> in the user name field
        And I type <password> in the password field
        And I click log in
        Then I get to my account screen

        Examples:
            | user | password |
            | test | abc123   |
            | paco | pass70   |

    Scenario Outline: Wrong user name
        Given I am in the log in screen
        And I am registered with user name <username>
        And my password is <password>
        When I type <typed-username> in the user name field
        And I type <password> in the password field
        And I click log in
        Then I get a wrong user name or password error

        Examples:
            |     username    | password  | typed-username  |
            | testuser        | pass12    | user            |
            | peter.porker    | sp1d3rh4m | peter.parker    |

    Scenario Outline: Wrong password
        Given I am in the log in screen
        And I am registered with user name <username>
        And my password is <password>
        When I type <username> in the user name field
        And I type <typed-password> in the password field
        And I click log in
        Then I get a wrong user name or password error

        Examples:
            |    username   | password  |  typed-password  |
            | test.user     | p4nd3m1c  | p4r4n014         |
            | vim-user      | t3st123   | test124          |
