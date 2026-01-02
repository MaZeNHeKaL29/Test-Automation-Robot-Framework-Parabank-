*** Settings ***
Documentation     Loan Request Validation Test
Resource          ${CURDIR}/../resources/loan_keywords.robot
Resource          ${CURDIR}/../resources/account_keywords.robot
Resource          ${CURDIR}/../resources/login_keywords.robot
Resource          ${CURDIR}/../variables/variables.robot
Test Teardown     Close Browser Session

*** Test Cases ***
Loan Request With New Account
    [Documentation]    Automate loan request and verify approval
    Open Parabank
    Enter Credentials And Login    ${VALID_USER}   ${VALID_PASS}
     # Create a new savings account first (reusable keyword)
    Open New Account Page
    Select Account Type    SAVINGS
    Select Funding Account
    Submit New Account Request
    ${account_number}=    Get New Account Number
    Verify Account Details    ${account_number}
    # Request loan using the new account
    Navigate To Request Loan Page
    Fill Loan Form    ${LOAN_AMOUNT}    ${DOWN_PAYMENT}    ${account_number}
    ${loan_number}=     Submit Loan Request
    Verify Loan Approved    ${loan_number}
