*** Settings ***
Documentation     Negative Login Test for Parabank
Resource          ../keywords/login_keywords.robot
Resource         ../resources/variables.robot
Test Teardown     Close Browser Session

*** Test Cases ***
Negative Login With Invalid Credentials
    [Documentation]    Verify error message is shown for invalid login
    Open Parabank
    Enter Credentials And Login    ${INVALID_USER}    ${INVALID_PASS}
    Verify Error Message Is Displayed
