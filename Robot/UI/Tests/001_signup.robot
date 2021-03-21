***Settings***
Resource    ../Resources/commom_resources.resource

Suite Setup       Access website
Suite Teardown    Close website

Documentation
...    This test suite intend to validate the sign up screen and it's functionalities.
...    Any test cases or suites should be written in another file.

***Test Cases***

Scenario 01: Successful signup
    Given that I access the sign up screen
    When I insert an valid e-mail
    And click on create an account
    And insert a valid user informations
    And insert a valid Address
    And click on "Register" button
    Then the user registration should be successful

Scenario 02: Unsuccessful signup by invalid e-mail on first step
    Given that I access the sign up screen
    When I insert an invalid e-mail
    And click on “Create an account”
    Then the first step of registration should fail
    And the system should display “Invalid e-mail address”

Scenario 03: Unsuccessful signup by short password
    Given that I access the sign up screen
    When I insert an valid e-mail
    And click on create an account
    And insert a invalid user informations by short password
    And insert a valid Address
    And click on "Register" button
    Then the user registration should fail
    And the system should inform that the password is invalid

Scenario 04: Unsuccessful signup by empty password
    Given that I access the sign up screen
    When I insert an valid e-mail
    And click on create an account
    And insert a invalid user informations by empty password
    And insert a valid Address
    And click on "Register" button
    Then the user registration should fail
    And the system should inform that the password is invalid