Feature: Login page
  As an User
  In order to access my account
  I need to be able to login

  Background:
    Given I am on the "login" page
    And the following users exist
    | email                | password    |
    | orphanage@random.com | my_password |

  Scenario: Login User
    When I fill in "Email" with "orphanage@random.com"
    And I fill in "Password" with "my_password"
    And I click "Log in"
    Then I should be redirected to the "home" page

  Scenario: Logging in with empty fields
    When I fill in "Email" with ""
    And I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: Logging in with wrong credentials
    When I fill in "Email" with "orphanage2@random.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  Scenario: Logging in with non-existing user account
    When I fill in "Email" with "orphanage2@random.com"
    And I fill in "Password" with "my_password"
    And I click "Log in"
    Then I should see "Invalid Email or password."
