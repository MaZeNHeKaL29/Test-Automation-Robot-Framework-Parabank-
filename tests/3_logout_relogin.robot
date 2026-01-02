*** Settings ***
Resource          ../keywords/login_keywords.robot
Resource         ../resources/variables.robot
Test Teardown    Close Browser Session

*** Test Cases ***
Logout And ReLogin Validation
    [Documentation]    Verify successful logout and re-login with valid credentials
    Open Parabank
    Enter Credentials And Login    ${VALID_USER}   ${VALID_PASS}
    Verify Login Successful
    Logout
    Enter Credentials And Login    ${VALID_USER}   ${VALID_PASS}
    Verify Login Successful
