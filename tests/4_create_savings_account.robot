*** Settings ***
Documentation     Create a new savings account and validate account details
Resource          ../keywords/account_keywords.robot
Resource          ../keywords/login_keywords.robot
Resource          ../resources/variables.robot
Test Teardown     Close Browser Session

*** Test Cases ***
Create New Savings Account
    [Documentation]    Automate savings account creation and verify details
    Open Parabank
    Enter Credentials And Login    ${VALID_USER}   ${VALID_PASS}
    Open New Account Page
    Select Account Type    SAVINGS
    Select Funding Account
    Submit New Account Request
    ${account_number}=    Get New Account Number
    Verify Account Details    ${account_number}
    Set Suite Variable    ${AccountCreated}    True
    Set Suite Variable    ${account_number}    ${account_number}
