*** Settings ***
Documentation    A resource file with reusable keywords used in test cases.
Library    RequestsLibrary
Library    Collections
Resource    variables.robot


*** Keywords ***
Send Get Request
    [arguments]    ${url}    ${params}    ${headers}
    ${response} =     GET    ${url}    params=${params}    headers=${headers}
    [return]    ${response}
Append ApiKey To Parameters
    [arguments]    ${params}
    Set To Dictionary    ${params}    apiKey=${apiKey}
    [return]    ${params}