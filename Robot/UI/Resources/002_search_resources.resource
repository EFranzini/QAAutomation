***Settings***
Resource    ../Resources/commom_resources.resource

Library    SeleniumLibrary

Variables    ../constants.py

Documentation
...    This resource is made exclusively for the tests of search functionality using templates.

***Keywords***
Given that I'm on the main page
    Title Should Be    My Store

When I insert in the search box the term ${TERM}
    Input text    id=search_query_top    ${TERM}

And click on the search button
    Click button    name=submit_search

Then I should be on the search results page
    Title Should Be    Search - My Store

And this page should show me some products
    Wait until element is visible    class=product_list
    ${result_blocks}=                Get WebElements       class=ajax_block_product
    FOR                              ${element}            IN                          @{result_blocks}
    Scroll Element Into View         ${element}
    END
