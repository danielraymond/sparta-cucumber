Feature: BBC Register Failure

  Scenario: Inputting incorrect sign up information causes registration to fail
    Given I access the bbc signup page
    And I input the correct date of birth
    And I input an email address already in use
    And I input a valid password
    And I input a valid postcode
    And I select a gender
    And I select whether I want email updates
    When I try to signup
    Then I get the correct error message
