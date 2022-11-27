*** Settings ***
Resource    ../../global_keywords/keywords.robot
Resource    ../../page_objects/add_account_page.robot

*** Keywords ***
Realizar login no Seu Barriga
    Log in to Seu Barriga

Quando preencho o nome da conta
    Insert account Name

E clico em salvar
    Click on save

E adicione mais 4 contas
    Add 4 accounts
Dado que acesse a pagina de Adicionar Contas
    Access the Add Accounts page
Então apresenta a mensagem ${TOAST_SUCCESS_MENSAGE}
    ${toast_mensage} =    Capture element text    ${TOAST_SUCCESS_MENSAGE}
    Should Be Equal    ${toast_mensage}    ${TOAST_SUCCESS_MENSAGE}

Então apresenta a mensagem de erro ${TOAST_SUCCESS_MENSAGE}
    ${toast_mensage} =    Capture element text    ${TOAST_SUCCESS_MENSAGE}
    Should Be Equal    ${toast_mensage}    ${TOAST_SUCCESS_MENSAGE}