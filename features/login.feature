Feature: Login page
  As an User
  In order to access my account
  I need to be able to login

  Background:
    Given the following users exist
    | email                | password    |
    | orphanage@random.com | my_password |

  Scenario: Accessing the login page
    Given I am on the "home" page
    And I click "Login"
    Then I should be on the "login" page

  Scenario: Login User
    Given I am on the "login" page
    And I fill in "Email" with "orphanage@random.com"
    And I fill in "Password" with "my_password"
    And I click "Log in"
  
