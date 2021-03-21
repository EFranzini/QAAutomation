***Settings***
Resource    ../Resources/001_signup_resources.resource

Test Setup       Access website
Test Teardown    Close website

Documentation
...    This test suite intend to validate the sign up screen and it's basics functionalities.
...    Any test cases or suites should be written in another file.

***Test Cases***

Scenario 01: Successful signup
    Given that I access the sign up screen
    When I insert an valid e-mail
    And click on Create an account
    And insert valid user informations
    And insert valid address
    And click on Register button
    Then the user registration should be successful

Scenario 02: Unsuccessful signup by invalid e-mail on first step
    Given that I access the sign up screen
    When I insert an invalid e-mail
    And click on Create an account
    Then the first step of registration should fail
    And the system should inform that the e-mail is invalid

Scenario 03: Unsuccessful signup by short password
    Given that I access the sign up screen
    When I insert an valid e-mail
    And click on Create an account
    And insert invalid user informations by short password
    And insert a valid address
    And click on Register button
    Then the user registration should fail
    And the system should inform that the password is invalid

Scenario 04: Unsuccessful signup by empty password
    Given that I access the sign up screen
    When I insert an valid e-mail
    And click on Create an account
    And insert invalid user informations by empty password
    And insert a valid address
    And click on Register button
    Then the user registration should fail
    And the system should inform that the password is invalid