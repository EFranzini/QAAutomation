***Settings***
Resource    ../Resources/commom_resources.resource
Resource    ../Resources/002_comments_resources.resource

Suite Setup    Connect to api

***Test Cases***

Scenario 01: The user is requesting the general comments
    Given the default header is created
    When the general comments is requested
    Then the requisition should be successful
    And the comments should return in payload
