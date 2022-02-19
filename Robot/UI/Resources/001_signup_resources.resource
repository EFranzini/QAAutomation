***Settings***
Resource    ../Resources/commom_resources.resource

Library    SeleniumLibrary
Library    ../libs/EmailLib.py

Variables    ../constants.py

Documentation
...    This resource is made exclusively for the tests of sign up functionality.

***Keywords***
Given that I access the sign up screen
    Click element    class=login

When I insert valid data
    Run keyword    Insert valid e-mail
    Run Keyword    Insert valid user informations
    Run keyword    Insert valid address
    Run keyword    Click on Register button

When I insert valid data with short password
    Run keyword    Insert valid e-mail
    Run Keyword    Insert invalid user informations by short password
    Run keyword    Insert valid address
    Run keyword    Click on Register button

When I insert invalid user informations by empty password
    Run keyword    Insert valid e-mail
    Run Keyword    Insert invalid user informations by empty password
    Run keyword    Insert valid address
    Run keyword    Click on Register button

When I insert an invalid e-mail
    Input text     id=email_create               someInvalidEmail
    Run Keyword    Click on Create an account

Then the user registration should be successful
    Wait until element is visible    class=account 
    Title Should Be                  My account - My Store
    Element Text Should Be           class=account            John Test User

Then the system should inform that the e-mail is invalid
    Wait until element is visible    id=create_account_error
    Element Text Should Be           id=create_account_error    Invalid email address.
    Element should be visible        class=form-error
    Title Should Be                  Login - My Store

Then the system should inform that the password is invalid
    Wait until element is visible    class=alert-danger
    Element Text Should Be           class=alert-danger    There is 1 error\npasswd is invalid.
    Title Should Be                  Login - My Store

Then the system should inform that the password is required
    Wait until element is visible    class=alert-danger
    Element Text Should Be           class=alert-danger    There is 1 error\npasswd is required.
    Title Should Be                  Login - My Store

Insert valid e-mail
    ${email} =     Get random email              ${EMAIL_API}
    Input text     id=email_create               ${email}
    Run Keyword    Click on Create an account

Insert valid user informations
    Wait until element is visible    id=account-creation_form
    Click element                    id=id_gender1
    Input text                       id=customer_firstname       John
    Input text                       id=customer_lastname        Test User
    Input text                       id=passwd                   123456
    Select from list by value        id=days                     25
    Select from list by value        id=months                   5
    Select from list by value        id=years                    1997

Insert invalid user informations by short password
    Wait until element is visible    id=account-creation_form
    Click element                    id=id_gender2
    Input text                       id=customer_firstname       John
    Input text                       id=customer_lastname        Test User
    Input text                       id=passwd                   abc
    Select from list by value        id=days                     25
    Select from list by value        id=months                   5
    Select from list by value        id=years                    1997

Insert invalid user informations by empty password
    Wait until element is visible    id=account-creation_form
    Click element                    id=id_gender2
    Input text                       id=customer_firstname       John
    Input text                       id=customer_lastname        Test User
    Select from list by value        id=days                     25
    Select from list by value        id=months                   5
    Select from list by value        id=years                    1997

Insert valid address
    Input text                   id=firstname       First name of address
    Input text                   id=lastname        Last name of address
    Input text                   id=address1        A valid address
    Input text                   id=city            South Hill
    Select from list by value    id=id_state        46
    Input text                   id=postcode        23970
    Input text                   id=phone_mobile    12345-6789
    Input text                   id=alias           My address alias

Click on Register button
    Click button    id=submitAccount

Click on Create an account
    Click element    id=SubmitCreate
