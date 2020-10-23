***Settings***
Resource    ../Resources/commom_resources.resource
Resource    ../Resources/001_posts_resources.resource

Suite Setup    Connect to api

***Test Cases***
Scenario 01: When the user request the posts list
    Given the default header is created
    When the user request the posts
    Then the requisition should be successful
    And the response should be a list of valid posts
