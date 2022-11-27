*** Settings ***
Resource    ../../global_keywords/keywords.robot
Resource    ../../page_objects/home_page.robot

*** Variables ***
${LOCATOR_FIRST_ROW_TABLE}    //table[@id='tabelaSaldo']//tr/td[2]
*** Keywords ***
Realizar login no Seu Barriga
    Log in to Seu Barriga
Dado que acesse a pagina Home
    Access the Home page
Quando clicar no botão Reset
    Click on reset button
Então apresenta mensagem ${TOAST_MENSAGE}
    Capture element text    ${toast_mensage}
    Should Be Equal    ${TOAST_MENSAGE}    ${toast_mensage}

E limpa todos os dados das contas
    ${contains_element}    Checks if an element exists on the page   ${LOCATOR_FIRST_ROW_TABLE}
    Should Be Equal As Integers    0    ${contains_element}

    