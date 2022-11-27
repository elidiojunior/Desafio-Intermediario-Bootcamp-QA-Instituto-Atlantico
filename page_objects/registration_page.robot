*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Resource   ../global_keywords/keywords.robot
*** Variables ***
${REGISTRATION_PAGE}            https://seubarriga.wcaquino.me/cadastro
${LOCATOR_REGISTRATION_BUTTON}  Cadastrar

*** Keywords ***
Open browser on Registration page
    Open Browser    ${REGISTRATION_PAGE}    ${BROWSER}
Insert the Name
    ${random_name}    FakerLibrary.Name
    Input Text    ${LOCATOR_NAME}       ${random_name}
Insert the Email
    ${random_email}    FakerLibrary.Email
    Input Text    ${LOCATOR_EMAIL}      ${random_email}
Insert the Password
    ${random_password}    FakerLibrary.Password
    Input Text    ${LOCATOR_PASSWORD}   ${random_password}
Click on Register
    Click Button    ${LOCATOR_REGISTRATION_BUTTON}

Insert email already registered
    Input Text    ${LOCATOR_EMAIL}    ${USER_EMAIL}