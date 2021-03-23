***Settings***
Library    SeleniumLibrary

Variables    ../constants.py

***Keywords***
Access website
    Open browser               ${SITE_URL}    ${BROWSER}
    Maximize browser window

Close website
    Close window
