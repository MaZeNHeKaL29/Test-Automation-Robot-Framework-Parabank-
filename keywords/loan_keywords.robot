*** Settings ***
Library    SeleniumLibrary
Resource   account_keywords.robot
Resource   login_keywords.robot

*** Keywords ***
Navigate To Request Loan Page
    Click Link    Request Loan
    Wait Until Page Contains    Apply for a Loan

Fill Loan Form
    [Arguments]    ${loan_amount}    ${down_payment}    ${account_number}
    Input Text    id:amount        ${loan_amount}
    Input Text    id:downPayment   ${down_payment}
    Select From List By Value    id:fromAccountId    ${account_number}

Submit Loan Request
    Click Button    css:input[value='Apply Now']
    Wait Until Page Contains Element    id:newAccountId
    Wait Until Element Is Visible       id:newAccountId
    Wait Until Element Is Enabled       id:newAccountId
    ${loan_number}=    Get Text    id:newAccountId
    [Return]    ${loan_number}

Verify Loan Approved
    [Arguments]    ${loan_number}
    Wait Until Page Contains            Approved
    Wait Until Page Contains Element    id:newAccountId
    Wait Until Element Is Visible       id:newAccountId
    Wait Until Element Is Enabled       id:newAccountId
    Click Element                       id:newAccountId
    Page Should Contain         ${loan_number}