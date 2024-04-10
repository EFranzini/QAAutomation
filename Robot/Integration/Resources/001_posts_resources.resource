***Settings***
Library    Collections
Library    RequestsLibrary

Resource    ../Resources/commom_resources.resource

***Keywords***
When the user request the posts
    ${request}=          GET on session    APIUrl    ${POSTS_ENDPOINT}    headers=${default_header}
    Set test variable    ${request}

Then the response should be a list of valid posts
    The requisition should be successful

    FOR    ${value}    IN    @{request.json()}

    Dictionary should contain key    ${value}    userId
    Dictionary should contain key    ${value}    id
    Dictionary should contain key    ${value}    title

    END

When the user send a post
    ${request}=          POST on session    APIUrl    ${POSTS_ENDPOINT}    json=${NEW_POST_PAYLOAD}    headers=${default_header}
    Set test variable    ${request}

Then the new post sent response should be valid
    The requisition should be successful

    Dictionary should contain item    ${request.json()}    title     ${NEW_POST_PAYLOAD.get("title")}     
    Dictionary should contain item    ${request.json()}    body      ${NEW_POST_PAYLOAD.get("body")}      
    Dictionary should contain item    ${request.json()}    userId    ${NEW_POST_PAYLOAD.get("userId")}    

Then the requisition should be successful
    The requisition should be successful

When the delete request is send
    ${request}=          DELETE on session    APIUrl    ${POSTS_ENDPOINT}${POST_NUMBER_1}    headers=${default_header}
    Set test variable    ${request}
