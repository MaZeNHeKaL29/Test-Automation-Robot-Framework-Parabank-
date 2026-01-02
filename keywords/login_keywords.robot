*** Settings ***
Library    SeleniumLibrary
Variables         ../variables/variables.robot

*** Keywords ***
Open Parabank
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    name:username

Enter Credentials And Login
    [Arguments]    ${username}    ${password}
    Input Text    name:username    ${username}
    Input Text    name:password    ${password}
    Click Button  css:input[value='Log In']

Verify Error Message Is Displayed
    Wait Until Page Contains Element    css:.error
    Element Should Be Visible    css:.error
    Element Text Should Be       css:.error    ${ERROR_MESSAGE}

Verify Login Successful
    Wait Until Page Contains    Welcome
    Page Should Contain         Welcome

Logout
    Click Link    Log Out
    Wait Until Page Contains Element    css:input[value='Log In']

Close Browser Session
    Close Browser
