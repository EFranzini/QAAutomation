***Settings***
Resource    ../Resources/commom_resources.resource

Suite Setup       Access website
Suite Teardown    Close website

***Test Cases***
Scenario 01: Access login page
    Given that I click on Signin button
    When I'm on the Signin page
    Then the page should contain a create account block
    And a login block
