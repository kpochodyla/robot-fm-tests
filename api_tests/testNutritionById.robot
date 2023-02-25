*** Settings ***
Documentation    Test that the API returns nutrition information about the specified recipe. 
Library    Collections
Library    RequestsLibrary
Resource     resources/resource.robot

*** Variables ***
${ID}    724324
${URL}    ${BASE_URL}/${ID}/nutritionWidget.json

*** Test Cases ***
Check Recipe Nutrition
    Log     ${URL}
    ${response} =     Send Get Request    ${URL}    ${DEFAULT_PARAMS}    ${DEFAULT_HEADERS}
    Status Should Be    200    ${response}
    Dictionary Should Contain Key    ${response.json()}    calories
    Dictionary Should Contain Key    ${response.json()}    carbs
    Dictionary Should Contain Key    ${response.json()}    fat
    Dictionary Should Contain Key    ${response.json()}    protein