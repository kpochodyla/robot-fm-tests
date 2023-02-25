*** Settings ***
Documentation    Test that API responds with a random recipe that meets the given parameters. 
Library    Collections
Library    RequestsLibrary
Resource     resources/resource.robot

*** Variables ***
&{PARAMETERS}    limitLicense=true    tags=vegetarian    number=1
${URL}    ${BASE_URL}/random
*** Test Cases ***
Find Random Recipe
    ${params} =     Append ApiKey To Parameters    ${PARAMETERS}
    ${response} =     Send Get Request    ${URL}    ${params}    ${DEFAULT_HEADERS}
    Status Should Be    200    ${response}
    Dictionary Should Contain Key    ${response.json()}[recipes][0]    id
    Dictionary Should Contain Key    ${response.json()}[recipes][0]    vegetarian
    Should Be Equal As Strings    ${response.json()}[recipes][0][vegetarian]    True
