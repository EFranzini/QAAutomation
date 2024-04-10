***Settings***
Library      RequestsLibrary
Variables    ../constants.py

***Keywords***
Connect to api
    Create session    APIUrl    ${API_URL}    disable_warnings=1

The requisition should be successful
    Request should be successful    ${request}

Given the default header is created
    &{default_header}=    Create dictionary    Content-type=application/json
    Set test variable     &{default_header}
