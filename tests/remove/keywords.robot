*** Settings ***
Resource    ../../global_keywords/keywords.robot
Resource    ../../page_objects/home_page.robot
Resource    ../../page_objects/list_account_page.robot
Resource    ../../page_objects/monthly_summary_page.robot

*** Keywords ***
Realizar login no Seu Barriga
    Log in to Seu Barriga
Dado que acesse a pagina de Resumo Mensal
    Access the monthly summary page
Quando clico no botão remover movimentação
    Remove negotiation
Dado que acesse a pagina de Listar Contas
    Access the list account page
Quando clico no botão remover de cada conta
    Remove account
Então apresenta mensagem ${TOAST_MENSAGE}
    Capture element text    ${toast_mensage}
    Should Be Equal    ${TOAST_MENSAGE}    ${toast_mensage}