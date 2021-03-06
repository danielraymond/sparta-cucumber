Feature: User login
  as I user
  I want to be able to sign up
  and login to the bbc site

  Scenario Outline: If I input incorrect password details I will receive the correct error message
    Given I am on the BBC home page
    And I move to the sign in page
    When I proceed to register
    And I input my DOB
    And I input the necessary details with the password details <password>
    Then I receive the corresponding error <error>

    Examples:
    | password |                          error                                                 |
    | a@34567  |  Sorry, that password is too short. It needs to be eight characters or more.   |
    | abcd1234 |    Sorry, that password isn't valid. Make sure it's hard to guess.             |
    | abcdefgh | Sorry, that password isn't valid. Please include something that isn't a letter.|
    | 12345678 | Sorry, that password isn't valid. Please include a letter.                     |


  Scenario Outline: If I input incorrect postcode details I will receive the correct error message
    Given I am on the BBC home page
    And I move to the sign in page
    When I proceed to register
    And I input my DOB
    And I input the necessary details with the postcode details <postcode>
    Then I receive the corresponding error <error_postcode>

    Examples:
    | postcode |                          error_postcode                                        |
    | b2           |  Sorry, that postcode's too short. Please check it's a proper postcode.    |
    | B2345AKF2124 |  Sorry, that postcode's too long. Please check it's a proper postcode.     |
