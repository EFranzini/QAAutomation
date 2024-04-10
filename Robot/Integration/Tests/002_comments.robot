***Settings***
Resource    ../Resources/002_comments_resources.resource

Suite Setup    Connect to api

***Test Cases***

Scenario 01: The user is requesting the general comments
    Given the default header is created
    When the general comments are requested
    Then the comments should return in payload

Scenario 02: The user request comments from a specific post
    Given the default header is created
    When specific post "2" comments are requested
    Then the specific comments should return in payload
