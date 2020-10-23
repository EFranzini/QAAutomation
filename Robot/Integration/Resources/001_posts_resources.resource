***Settings***
Library    Collections
Library    RequestsLibrary

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

When the user send a post
    ${request}=          Post request    APIUrl    ${POSTS_ENDPOINT}    json=${NEW_POST_PAYLOAD}    headers=${default_header}
    Set test variable    ${request}

And the new post sent response should be valid
    Dictionary should contain item    ${request.json()}    title     ${NEW_POST_PAYLOAD.get("title")}     
    Dictionary should contain item    ${request.json()}    body      ${NEW_POST_PAYLOAD.get("body")}      
    Dictionary should contain item    ${request.json()}    userId    ${NEW_POST_PAYLOAD.get("userId")}    
