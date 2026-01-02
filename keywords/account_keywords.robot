*** Settings ***
Library    SeleniumLibrary
Resource   login_keywords.robot

*** Keywords ***
Open New Account Page
    Click Link    Open New Account
    Wait Until Page Contains    Open New Account

Select Account Type
    [Arguments]    ${account_type}=Savings
    Select From List By Label    id:type    ${account_type}

Select Funding Account
    [Arguments]    ${account_id}=Default
    # Use the first account in dropdown if default
    Select From List By Index    id:fromAccountId    0

Submit New Account Request
    Click Button    css:input[value='Open New Account']
    Wait Until Page Contains Element    id:newAccountId

Get New Account Number
    Wait Until Page Contains Element    id:newAccountId
    Wait Until Element Is Visible       id:newAccountId
    Wait Until Element Is Enabled       id:newAccountId
    ${account_number}=    Get Text    id:newAccountId
    Log    New Account Number: ${account_number}
    [Return]    ${account_number}

Verify Account Details
    [Arguments]    ${account_number}
    Wait Until Page Contains Element    id:newAccountId
    Click ELement   id:newAccountId
    Wait Until Page Contains    Account Details
    Page Should Contain         ${account_number}
