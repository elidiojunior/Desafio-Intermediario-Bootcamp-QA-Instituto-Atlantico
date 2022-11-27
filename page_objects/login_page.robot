*** Settings ***
Library     SeleniumLibrary
Resource    ../global_keywords/keywords.robot


*** Variables ***
${LOGIN_PAGE}                https://seubarriga.wcaquino.me/login
${LOCATOR_ENTER_BUTTON}      Entrar

*** Keywords ***
Open browser on Login page
    Open Browser    ${LOGIN_PAGE}    ${BROWSER}

Insert the Email
    Input Text    ${LOCATOR_EMAIL}     ${USER_EMAIL}

Insert the Password
    Input Password    ${LOCATOR_PASSWORD}    ${USER_PASSWORD}

Insert invalid email
    ${random_email}    FakerLibrary.Email
    Input Text    ${LOCATOR_EMAIL}     ${random_email}
    
Insert invalid Password
    ${random_password}    FakerLibrary.Password
    Input Password    ${LOCATOR_PASSWORD}    ${random_password}

Click on Enter
    Click Button    ${LOCATOR_ENTER_BUTTON}  