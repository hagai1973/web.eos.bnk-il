
*** Settings ***
Library     Browser
Library     BuiltIn

*** Variables ***
${DEFAULT_TIMEOUT}    10s

*** Keywords ***
Set Default Timeout
    Set Browser Timeout    ${DEFAULT_TIMEOUT}

Click Element
    [Arguments]    ${locator}                ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State    ${locator}    visible    ${timeout}
    Wait For Elements State    ${locator}    enabled    ${timeout}
    Click                      ${locator}

Type Text to Element
    [Arguments]    ${locator}    ${text}        ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State    ${locator}    visible    ${timeout}
    Wait For Elements State    ${locator}    enabled    ${timeout}
    Type Text                  ${locator}            ${text}

Element Should Exist
    [Arguments]    ${locator}    ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State    ${locator}    visible    ${timeout}

Element Should be hidden
    [Arguments]    ${locator}    ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State    ${locator}    hidden    ${timeout}

Element Should Not Exist
    [Arguments]    ${locator}    ${timeout}=${DEFAULT_TIMEOUT}
    Wait For Elements State    ${locator}    detached    ${timeout}