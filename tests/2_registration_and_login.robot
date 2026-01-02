*** Settings ***
Library           DateTime
Documentation     User Registration and Automatic Login Validation
Resource          ../keywords/registration_keywords.robot
Resource         ../resources/variables.robot
Test Teardown     Close Browser Session

*** Test Cases ***
User Can Register And Is Automatically Logged In
    [Documentation]    Verify user is logged in automatically after registration
    Open Parabank
    Navigate To Registration Page
    Fill Registration Form
    Submit Registration
    Verify User Is Logged In
