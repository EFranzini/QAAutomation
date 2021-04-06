***Settings***
Resource    ../Resources/002_search_resources.resource

Test Setup       Access website
Test Teardown    Close website

Documentation
...    This test suite intend to validate the search functionalities using the templates tool.
...    Any test cases or suites should be written in another file.
...    Note: This test suite doesn't have the intend to validate the search results.
...    The idea is just to use the template tool, and the search is very appropriated to this

Test Template    The user is searching for divers terms

***Test Cases***                                 TERM
The user is searching for the "Blouse" term      Blouse
The user is searching for the "Dresses" term     Dresses
The user is searching for the "T-shirts" term    T-shirts


***Keywords***
The user is searching for divers terms
    [Arguments]                                         ${TERM}
    Given that I'm on the main page
    When I insert in the search box the term ${TERM}
    And click on the search button
    Then I should be on the search results page
    And this page should show me some products
