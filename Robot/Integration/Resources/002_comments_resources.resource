***Settings***
Library    RequestsLibrary
Library    Collections

***Keywords***
When the general comments is requested
    ${request}=          Get request    APIUrl    ${COMMENTS_ENDPOINT}    headers=${default_header}
    Set test variable    ${request}

And the comments should return in payload
    FOR    ${comment}    IN    @{request.json()}

    Dictionary should contain item    ${comment}                  postId    ${comment.get("postId")}
    Dictionary should contain item    ${comment}                  id        ${comment.get("id")}
    Dictionary should contain item    ${comment}                  name      ${comment.get("name")}
    Dictionary should contain item    ${comment}                  email     ${comment.get("email")} 
    Dictionary should contain key     ${comment}                  body

    END
