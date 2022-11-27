*** Settings ***
Resource    ../../global_keywords/keywords.robot
Resource    ../../page_objects/create_negotiation_page.robot
Resource    ../../page_objects/home_page.robot

*** Keywords ***
Realizar login no Seu Barriga
    Log in to Seu Barriga
Dado que acesso a pagina de Criar Movimentação
    Access the Create Negotiation page
Quando crio uma negociação de receita paga para cada conta
    Create negotiation by account and paid income
Quando crio uma negociação de despesa paga para cada conta
    Create negotiation by account and paid expense
Então apresenta a mensagem ${TOAST_SUCCESS_MENSAGE}
    ${toast_mensage} =    Capture element text    ${TOAST_SUCCESS_MENSAGE}
    Should Be Equal    ${toast_mensage}    ${TOAST_SUCCESS_MENSAGE}