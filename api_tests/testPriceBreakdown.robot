*** Settings ***
Documentation    Test that the API returns price breakdown of the specified recipe.
Library    Collections
Library    RequestsLibrary
Resource     resources/resource.robot

*** Variables ***
${ID}    724324
${URL}    ${BASE_URL}/${ID}/priceBreakdownWidget.json

*** Test Cases ***
Check Recipe Price Breakdown
    Log     ${URL}
    ${response} =     Send Get Request    ${URL}    ${DEFAULT_PARAMS}    ${DEFAULT_HEADERS}
    Status Should Be    200    ${response}
    Dictionary Should Contain Key    ${response.json()}    ingredients
    Dictionary Should Contain Key    ${response.json()}    totalCost
    Dictionary Should Contain Key    ${response.json()}    totalCostPerServing
