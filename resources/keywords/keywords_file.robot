
*** Settings ***
Library     Browser
Library     BuiltIn
Resource    ../pages/login_page.robot

*** Variables ***
${input_username}        xpath=//input[contains(@id,"r1")]
${input_password}        xpath=//input[contains(@id,"r2")]
${submit_button}         css=button[type="submit"]
    


*** Keywords ***
Enter Credentials for login
    [Documentation]    This keyword enters the provided username and password into the login form and submits it.
    [Arguments]        ${username}    ${password}
    enter user name        ${username}
    Enter Password         ${password}
    Click Element          ${submit_button}


Validate successful Login
    [Documentation]    This keyword validates the login by checking the URL.
    Element Should not Exist            ${submit_button}                3s


Setup Browser
    [Documentation]    This keyword opens a new browser with the provided settings getting the browser, and headless from the arguments file.
    New Browser            browser=${BROWSER}                headless=${HEADLESS}

Open Login Page
    [Documentation]    This keyword opens the login page using the URL from the arguments file.
    New Page                     ${URL}