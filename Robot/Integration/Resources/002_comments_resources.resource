***Settings***
Library    RequestsLibrary
Library    BuiltIn
Library    Collections

***Keywords***
When the general comments is requested
    ${request}=          Get request    APIUrl    ${COMMENTS_ENDPOINT}    headers=${default_header}
    Set test variable    ${request}

And the comments should return in payload
    FOR    ${comment}    IN    @{request.json()}

    ${post_id}=       Evaluate      isinstance(${comment.get("postId")}, int) 
    Should be true    ${post_id}

    ${id}=            Evaluate    isinstance(${comment.get("id")}, int)
    Should be true    ${id}

    ${name}=          Evaluate    isinstance('${comment.get("name")}', str)
    Should be true    ${name}

    ${email}=         Evaluate    isinstance('${comment.get("email")}', str)
    Should be true    ${email}

    Dictionary should contain key    ${comment}    body

    END

When specific post comments are requested
    [Arguments]          ${POST_ID}
    ${request}=          Get request                                APIUrl    ${COMMENTS_ENDPOINT}?postId=${POST_ID}
    Set test variable    ${request}
