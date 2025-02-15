
*** Settings ***
Library     Browser
Library     BuiltIn
Resource    ./base_page.robot


*** Variables ***
${input_username}        xpath=//input[contains(@id,"r1")]
${input_password}        xpath=//input[contains(@id,"r2")]
${submit_button}         css=button[type="submit"]



*** Keywords ***
enter user name
    [Arguments]        ${username}
    Type Text to Element    ${input_username}    ${username}

enter password
    [Arguments]        ${password}
    Type Text to Element        ${input_password}      ${password}

click submit
    Click Element        ${submit_button}