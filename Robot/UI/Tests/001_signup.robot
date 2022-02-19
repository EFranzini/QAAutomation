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
    When I insert valid data
    Then the user registration should be successful

Scenario 02: Unsuccessful signup by invalid e-mail on first step
    Given that I access the sign up screen
    When I insert an invalid e-mail
    Then the system should inform that the e-mail is invalid

Scenario 03: Unsuccessful signup by short password
    Given that I access the sign up screen
    When I insert valid data with short password
    Then the system should inform that the password is invalid

Scenario 04: Unsuccessful signup by empty password
    Given that I access the sign up screen
    When I insert invalid user informations by empty password
    Then the system should inform that the password is required
