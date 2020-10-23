***Settings***
Library      Collections
Library      RequestsLibrary

Variables    ../constants.py

***Keywords***
When the user request the posts
    ${request}=          Get request    APIUrl    ${POSTS_ENDPOINT}    headers=${default_header}
    Set test variable    ${request}

And the response should be a list of valid posts
    FOR    ${value}    IN    @{request.json()}

    Dictionary should contain key    ${value}    userId
    Dictionary should contain key    ${value}    id
    Dictionary should contain key    ${value}    title

    END
