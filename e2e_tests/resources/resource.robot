*** Settings ***
Documentation    A resource file with reusable keywords used in test cases.
Library    SeleniumLibrary
Library    Collections
Resource    variables.robot
Resource    locators.robot


*** Keywords ***
End Test Case
    Close Browser

Get List Of Text Values
    [arguments]    ${list_of_elements}
    @{list_of_text_values} =     Create List
    FOR     ${element}     IN    @{list_of_elements}
        ${text} =     Get Text    ${element}
        Append To List    ${list_of_text_values}    ${text}
    END
    [return]    ${list_of_text_values}

Get Sum Of Values From Text List
    [arguments]    ${list_of_texts}
    ${sum_of_values}    Set Variable    0
    FOR  ${element}  IN  @{list_of_texts}
        ${integer}    Convert To Integer    ${element}
        ${sum_of_values} =     Set Variable    ${sum_of_values} + ${integer}
    END
    [return]    ${sum_of_values}

open the browser with the Testarena url
    Create Webdriver    ${BROWSER}
    Go To    ${URL}
fill the login form
    [arguments]    ${email}    ${password}
    Input Text    ${email_field}    ${email}
    Input Password    ${password_field}    ${password}
    Click Button    ${login_button}
login in to testarena
    open the browser with the Testarena url
    fill the login form    ${EMAIL}    ${PASSWORD}
    Wait Until Element Is Visible    ${logout_button}

