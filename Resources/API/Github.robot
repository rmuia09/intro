*** Settings ***
Library  RequestsLibrary
Library  json
Library  SeleniumLibrary  # only used to display something we get back from API test
#Library  Collections
#Library  ExtendedRequestsLibrary
Library  OperatingSystem

*** Variables ***
${Base_URL}   https://api.paystack.co
#https://services-staging.tradebfx.com
#${Content-Type}=    application/json
#${client_secret}=   sk_test_10f8d54867cc448e852fcdc2e346e9dc786aeda3
#${client_id}=       xxxxxxxxxx
#${headers}=         accept=application/json

#${uri}    https://blabla.com/service/
${json_path}    /Users/richardmuia/Documents/

*** Keywords ***
Check Github Username
    # Create the Session
#    ${token}=    Set Variable    Bearer
    Create Session  session  ${Base_URL}  disable_warnings=1


#    &{data}=  Create Dictionary   client_id=${client_id}   client_secret=${client_secret}   grant_type=${grant_type}
#  &{data}=  Create Dictionary    client_secret=${client_secret} email=nrichardmuia@gmail.com amount=5000 reference=12 currency=NGN  callback_url=http://mandlatech.co.ke/
#    &{headers}=  Create Dictionary   Content-Type=application/json; charset=utf-8
#    ${resp}=  Post Request  session  ${Base_URL}  ${data}  ${headers}
#    Should Be Equal As Strings  ${resp.status_code}  200


#   Create Session    alias    ${uri}
#    &{data}=  Create Dictionary    client_secret=${client_secret}
    &{headers}=  Create Dictionary  Content-Type=application/json; charset=utf-8   Authorization=Bearer sk_test_10f8d54867cc448e852fcdc2e346e9dc786aeda3
    ${json}    Get Binary File  ${json_path}json.json
#    ${resp}=  Post Request  session  ${Base_URL}  ${data}  ${headers}
#     ${resp}    Post Request    alias    data=${json}    headers=${headers}
    ${resp}    Post Request  session  /transaction/initialize  data=${json}  headers=${headers}
    Should Be Equal As Strings    ${resp.status_code}    200


#    Create Session   azure   https://login.microsoftonline.com/xxxxxxxxxx/oauth2
#    ${resp}=  Post Request  azure  /token  ${data}  ${headers}












#    https://api.github.com

    # Make the call (and capture the response in a variable)

#    &{body}=  create dictionary  client_secret=d5zc7srnexdo667p email=richard+test15@azafinance.com  password=P@ssword2020!
#    &{headers}=    Create Dictionary    Content-Type=application/json  Authorization=Bearer
#    ${response} =  post request  session  /auth/login  data=${body} headers=${headers}

#    &{body}=  create dictionary  client_secret=d5zc7srnexdo667p email=richard+test15@azafinance.com  password=P@ssword2020!
#    &{headers}=    Create Dictionary    Content-Type=application/json  Authorization=Bearer
#    ${response} =  post request  session  /transaction/initialize  data=${body} headers=${headers}
#
#
#
##    create session   my_session     https://qa3-apiv2.xxx.com/oauth2    verify=${True}
##    ${data1}=    create dictionary  grant_type=password    client_id=9cde7c7dcf4d47772a068bf24ca0f518657a5f84    client_secret=cf102c871fe20a85c3dfb9d4d114eebccace168b   username=qa3test_admin   password=Password123#
##    ${resp}=     Post Request     my_session      /token.php    data=${data1}
#    Should Be Equal As Strings  ${response.status_code}  200
#    ${token}=    evaluate    $response.json().get("token")
#    Log    ${response.content}



#    Create Session  hook    https://services-staging.tradebfx.com/auth/login  verify=${True}
#    ${data}=      Create Dictionary      client_secret=d5zc7srnexdo667p    username=richard+test15@azafinance.com  password=P@ssword2020!
#    ${headers}=   Create Dictionary      Content-Type=application/x-www-form-urlencoded
#    ${resp}=        RequestsLibrary.Post Request    hook    /token    data=${data} headers=${headers}
#    Should Be Equal As Strings  ${resp.status_code}     200
#    ${accessToken}=    evaluate    $resp.json().get("access_token")
#    Log to Console        ${accessToken}














#    users/robotframeworktutorial

    # Check the Response status
#    Should Be Equal As Strings  ${response.status_code}  200
#    ${token_string}=    Set Variable    Bearer
#    ${code} =  convert to string  ${response.status_code}
#    should be equal   ${code}  401
#    ${token}=    evaluate    $response.json().get("access_token")
#    ${stripped_token}=    Strip String    ${token}
#    ${token_string}=    Catenate    ${token_string}    ${stripped_token}
#    [Return]    ${token_string}


#${token_string}=    Set Variable    Bearer
#Create Session    webservice    ${BASE_TOKEN_URL}    verify=${True}
#${data}=    Create Dictionary    token_name=customerequipment    grant_type=client_credentials    client_id=customerequipmentqa    client_secret=ac975251ba4349acbb962955876ec404    scope=xnet:customerequipment
#${headers}=    Create Dictionary    Content-Type=application/x-www-form-urlencoded
#${resp}=    Post Request    webservice    /as/token.oauth2    data=${data}    headers=${headers}
#Should Be Equal As Strings    ${resp.status_code}    200
#${token}=    evaluate    $resp.json().get("access_token")
#${stripped_token}=    Strip String    ${token}
#${token_string}=    Catenate    ${token_string}    ${stripped_token}
#[Return]    ${token_string}








#    log to console  ${response.content}
#    # Check the Response body
#    ${json} =  Set Variable  ${response.json()}
#    Should Be Equal As Strings  ${json['login']}  robotframeworktutorial
#    Log  ${json}
#
##     Get authToken by Password Authentication
#
#
#Display Emoji
#
#
#    Create Session  hook    https://services-staging.tradebfx.com/auth/login  verify=${True}
#    ${data}=      Create Dictionary      client_secret=d5zc7srnexdo667p    username=richard+test15@azafinance.com  password=P@ssword2020!
#    ${headers}=   Create Dictionary      Content-Type=application/x-www-form-urlencoded
#    ${resp}=        RequestsLibrary.Post Request    hook    /token    data=${data} headers=${headers}
#    Should Be Equal As Strings  ${resp.status_code}     200
#    ${accessToken}=    evaluate    $resp.json().get("access_token")
#    Log to Console        ${accessToken}


#    Create Session    OA2    <Your Server URL>    verify=${True}
#    ${data}=     Create Dictionary    Token_Name=TestTokenname    grant_type=<grant type>    client_Id=<your Id>     Client_Secret=<Your client secret>    scope=<your scpe>
#    ${headers}=   Create Dictionary    Content-Type=application/x-www-form-urlencoded
#
#    ${resp}=    RequestsLibrary.Post Request    OA2    identity/connect/token    data=${data}    headers=${headers}
#    BuiltIn.Log To Console    ${resp}
#    BuiltIn.Log To Console    ${resp.status_code}
#S   hould Be Equal As Strings    ${resp.status_code}    200
#    Dictionary Should Contain Value    ${resp.json()}   Testtokenname
#    ${accessToken}=    evaluate    $resp.json().get("access_token")
#    BuiltIn.Log to Console    ${accessToken}
#    ${token}=    catenate    Bearer    ${accessToken}
#    BuiltIn.Log to Console    ${token}
#    ${headers1}=  Create Dictionary    Authorization=${token}
#
#    RequestsLibrary.Create Session    GT    <Your Server URL>    verify=${True}
#    ${resp}=  RequestsLibrary.Get Request  GT    <Your API URL>    headers=${headers1}
#    Should Be Equal As Strings    ${resp.status_code}    200



#grant_type=password     client_id=1abc

#Display Emoji
#    # Create the session
#    Create Session  my_github_session  https://api.github.com
#
#    # Make the call (and capture the response in a variable)
#    ${response} =  Get Request  my_github_session  emojis
#
#    # Check the Response status
#    Should Be Equal As Strings  ${response.status_code}  200
#
#    # Check the Response body
#    ${json} =  Set Variable  ${response.json()}
#    ${emoji_url} =  Set Variable  ${json['aerial_tramway']}
#    Open Browser  ${emoji_url}  ie


