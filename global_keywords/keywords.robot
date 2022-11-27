*** Settings ***
Library    SeleniumLibrary
Resource   ../page_objects/login_page.robot
Library    FakerLibrary    locale=pt_BR
Library    DateTime

*** Variables ***
${BROWSER}           Chrome  

${LOCATOR_NAME}      nome
${LOCATOR_EMAIL}     email
${LOCATOR_PASSWORD}  senha

${USER_NAME}         tester10
${USER_EMAIL}        tester10@gmail.com
${USER_PASSWORD}     123456@abc


@{ACCOUNTS_NAMES}    Conta1    Conta2    Conta3    Conta4

*** Keywords ***
Capture element text
    [Arguments]    ${locator}
    ${element_text}    Get Text    //div[contains(text(),'${locator}')]
    [Return]    ${element_text}

Log in to Seu Barriga
    Open browser on Login page
    Insert the Email
    Insert the Password
    Click on Enter

Input text in the field
    [Arguments]    ${locator_text}    ${text}
    Input Text    ${locator_text}    ${text}

Click on table element
    [Arguments]    ${locator_row}    ${locator_first_element_table}
    ${rows}    Get Element Count    ${locator_row}                
    FOR    ${counter}    IN RANGE    1    ${rows}
       Click Element     ${locator_first_element_table}                       
    END

Checks if an element exists on the page
    [Arguments]    ${element_locator}
    ${element_row}    Get Element Count    ${element_locator}
    [Return]    ${element_row}

Current date
    ${current_date}    Get Current Date    result_format=%d/%m/%Y
    [Return]    ${current_date}