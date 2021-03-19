***Settings***
Library    SeleniumLibrary

Variables    ../constants.py

***Keywords***
Access website
    Open browser               ${SITE_URL}    ${BROWSER}
    Maximize browser window

Close website
    Close window

Given that I click on Signin button
    Click element    class=login

When I'm on the Signin page
    Title should be    Login - My Store

Then the page should contain a create account block
    Wait until element is visible    id=create-account_form

And a login block
    Wait until element is visible    id=login_form
