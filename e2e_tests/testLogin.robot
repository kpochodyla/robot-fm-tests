*** Settings ***
Documentation    Test loging in from main page.
Library    SeleniumLibrary
Resource    resources/resource.robot
Test Teardown     End Test Case

*** Test Cases ***
Validate Succesful Login
    [Tags]    SMOKE
    open the browser with the Testarena url
    fill the login form    ${EMAIL}    ${PASSWORD}
    verify that loging in was sucesfull

Validate Unsuccesful Login
    [Tags]    SMOKE
    open the browser with the Testarena url
    fill the login form    wrong_email@test.pl    Wrong password
    verify that error message is visible

*** Keywords ***
verify that loging in was sucesfull
    Wait Until Element Is Visible    ${logout_button}
    Element Should Be Visible    ${logout_button}   Logout button is not visible
verify that error message is visible
    Wait Until Element Is Visible     ${login_form_error_prompt}
    Element Should Be Visible    ${login_form_error_prompt}    No error message visible
