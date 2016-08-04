Feature: Home Page
  As a visitor
  In order to be able to help orphanages financially
  I want to see the purpose of this page/app, the beneficiaries and their goals/needs,
  and how I can donate to satisfy the goals/needs

  Scenario: Viewing the home Page
    Given I am on the home Page
    Then I should see "Welcome to the orphanage donation page"
    And I should see a button "Donate"
    
