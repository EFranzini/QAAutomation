***Settings***
Library    RequestsLibrary
Library    BuiltIn
Library    Collections

Resource    ../Resources/commom_resources.resource

***Keywords***
When the general comments are requested
    ${request}=          GET On Session    APIUrl    ${COMMENTS_ENDPOINT}    headers=${default_header}
    Set test variable    ${request}

When specific post "${POST_ID}" comments are requested
    ${request}=          GET On Session    APIUrl    ${COMMENTS_ENDPOINT}    params=postId=${POST_ID}   headers=${default_header}
    Set test variable    ${POST_ID}
    Set test variable    ${request}

Then the comments should return in payload
    The requisition should be successful

    FOR    ${comment}    IN    @{request.json()}

    ${has_post_id}=       Evaluate      isinstance(${comment.get("postId")}, int) 
    Should be true    ${has_post_id}

    ${has_id}=            Evaluate    isinstance(${comment.get("id")}, int)
    Should be true    ${has_id}

    ${has_name}=          Evaluate    isinstance('${comment.get("name")}', str)
    Should be true    ${has_name}

    ${has_email}=         Evaluate    isinstance('${comment.get("email")}', str)
    Should be true    ${has_email}

    Dictionary should contain key    ${comment}    body

    END

Then the specific comments should return in payload
    The requisition should be successful

    FOR    ${comment}    IN    @{request.json()}

    ${has_post_id}=               Evaluate      isinstance(${comment.get("postId")}, int) 
    Should Be Equal As Numbers    ${comment.get("postId")}    ${POST_ID}

    ${has_id}=        Evaluate    isinstance(${comment.get("id")}, int)
    Should be true    ${has_id}

    ${has_name}=      Evaluate       isinstance('${comment.get("name")}', str)
    Should be true    ${has_name}

    ${has_email}=     Evaluate       isinstance('${comment.get("email")}', str)
    Should be true    ${has_email}

    Dictionary should contain key    ${comment}    body

    END    
