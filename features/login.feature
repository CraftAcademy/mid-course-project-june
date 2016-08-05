Feature: Login page
  As an User
  In order to access my account
  I need to be able to login

  Scenario: Accessing the login page
    Given I am on the home page
    And I click "Login"
    Then I should be on the login page
    
