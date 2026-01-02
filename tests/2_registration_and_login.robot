*** Settings ***
Library           DateTime
Documentation     User Registration and Automatic Login Validation
Resource          ../resources/registration_keywords.robot
Resource          ../variables/variables.robot
Test Teardown     Close Browser Session

*** Test Cases ***
User Can Register And Is Automatically Logged In
    [Documentation]    Verify user is logged in automatically after registration
    Open Parabank
    Navigate To Registration Page
    ${UTCTime} =    Get Current Date    time_zone=UTC    result_format=%Y-%m-%d %H:%M:%S
    Fill Registration Form  ${UTCTime}
    Submit Registration
    Verify User Is Logged In
