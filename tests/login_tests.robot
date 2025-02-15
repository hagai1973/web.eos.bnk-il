
*** Settings ***
Resource    ../resources/keywords/keywords_file.robot
Suite Setup        Setup Browser
Suite Teardown     Close Browser

*** Variables ***
${URL}              ${URL}    # URL is passed in from the arguments file
${VALID_USERNAME}   john_doe@company.con
${VALID_PASSWORD}   123456


*** Test Cases ***
Sanity Login Test
    [Documentation]   This test opens the login page, enters credentials, and pauses for verification.
    [Tags]            sanity
    Log To Console           \n attempt to get: ${URL}
    Open Login Page
    Log To Console        \n attempt to enter credentials: user: ${VALID_USERNAME} password: ${VALID_PASSWORD}
    Enter Credentials for login                       ${VALID_USERNAME}     ${VALID_PASSWORD}
    Log To Console        \n attempt to validate login: ${URL}
    Validate successful Login




