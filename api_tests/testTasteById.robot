*** Settings ***
Documentation    Test that the API returns information about the taste of the specified recipe.
Library    Collections
Library    RequestsLibrary
Resource     resources/resource.robot

*** Variables ***
${ID}    724324
${URL}    ${BASE_URL}/${ID}/tasteWidget.json

*** Test Cases ***
Check Taste Of Recipe By Id
    Log     ${URL}
    ${response} =     Send Get Request    ${URL}    ${DEFAULT_PARAMS}    ${DEFAULT_HEADERS}
    Status Should Be    200    ${response}
    Dictionary Should Contain Key    ${response.json()}    sweetness
    Dictionary Should Contain Key    ${response.json()}    saltiness
    Dictionary Should Contain Key    ${response.json()}    sourness
    Dictionary Should Contain Key    ${response.json()}    bitterness
    Dictionary Should Contain Key    ${response.json()}    savoriness
    Dictionary Should Contain Key    ${response.json()}    fattiness
    Dictionary Should Contain Key    ${response.json()}    spiciness
