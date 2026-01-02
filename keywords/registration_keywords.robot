*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Parabank
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Navigate To Registration Page
    Click Link    Register

Fill Registration Form
    Input Text    id:customer.firstName    ${FIRST_NAME}
    Input Text    id:customer.lastName     ${LAST_NAME}
    Input Text    id:customer.address.street    ${ADDRESS}
    Input Text    id:customer.address.city      ${CITY}
    Input Text    id:customer.address.state     ${STATE}
    Input Text    id:customer.address.zipCode   ${ZIP}
    Input Text    id:customer.phoneNumber       ${PHONE}
    Input Text    id:customer.ssn                ${SSN}
    Input Text    id:customer.username           ${USERNAME}
    Input Text    id:customer.password           ${PASSWORD}
    Input Text    id:repeatedPassword            ${PASSWORD}

Submit Registration
    Click Button    css:input[value='Register']

Verify User Is Logged In
    Wait Until Page Contains    Welcome
    Page Should Contain         Welcome

Close Browser Session
    Close Browser
