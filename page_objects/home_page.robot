*** Settings ***
Resource    ../global_keywords/keywords.robot

*** Variables ***
${HOME_PAGE}                          https://seubarriga.wcaquino.me/
${LOCATOR_NAVBAR_ACCOUNT}             Contas 
@{LOCATOR_DROPDOWN_MENU_ACCOUNT}      Adicionar    Listar
${LOCATOR_NAVBAR_CREATE_TRADE}        Criar Movimentação
${LOCATOR_NAVBAR_MONTHLY_SUMMARY}     Resumo Mensal
${LOCATOR_NAVBAR_HOME}                Home
${LOCATOR_RESET}                      //a[contains(text(),'reset')]

*** Keywords ***
Access the Home page
    Click Element    link=${LOCATOR_NAVBAR_HOME}
Access the Add Accounts page 
    Click Element    link=${LOCATOR_NAVBAR_ACCOUNT}
    Click Element    link=${LOCATOR_DROPDOWN_MENU_ACCOUNT}[0]
Access the Create Negotiation page
    Click Element    link=${LOCATOR_NAVBAR_CREATE_TRADE}

Access the list account page
    Click Element    link=${LOCATOR_NAVBAR_ACCOUNT}
    Click Element    link=${LOCATOR_DROPDOWN_MENU_ACCOUNT}[1]

Access the monthly summary page
    Click Element    link=${LOCATOR_NAVBAR_MONTHLY_SUMMARY}

Click on reset button
    Click Element    ${LOCATOR_RESET}

    

