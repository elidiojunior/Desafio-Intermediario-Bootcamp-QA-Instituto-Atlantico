*** Settings ***
Resource    ../global_keywords/keywords.robot
Resource    home_page.robot

*** Variables ***
${BUTTON_SUBMIT}    Salvar

*** Keywords ***
Insert account Name
    Input text in the field    ${LOCATOR_NAME}    ${ACCOUNTS_NAMES}[0]
Click on save
    Click Button    ${BUTTON_SUBMIT}

Add 4 accounts
    FOR    ${element}    IN    @{ACCOUNTS_NAMES}    
        IF    "${element}" != "${ACCOUNTS_NAMES}[0]"
            Access the Add Accounts page 
            Input text in the field    ${LOCATOR_NAME}    ${element}
            Click on save  
        END    
    END