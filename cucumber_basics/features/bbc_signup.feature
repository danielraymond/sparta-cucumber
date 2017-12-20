Feature: BBC Register

  Scenario: Inputting correct sign up information allows the user to sign up
    Given I access the bbc signup page
    And I input the correct date of birth
    And I input a valid email address
    And I input a valid password
    And I input a valid postcode
    And I select a gender
    And I select whether I want email updates
    When I try to signup
    Then I sign up successfully
