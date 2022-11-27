*** Settings ***
Library    SeleniumLibrary
Resource   ../../global_keywords/keywords.robot
Resource   ../../page_objects/login_page.robot
*** Variables ***
${TOAST_SUCCESS_MENSAGE}            Bem vindo, ${USER_NAME}!

*** Keywords ***
Dado que acesse a pagina de Login
    Open browser on Login page
Quando preenche o Email invalido
    Insert invalid email
E preenche a Senha invalida
    Insert invalid Password
E clica em Entrar
    Click on Enter
Quando preenche o Email
    Insert the Email
E preenche a Senha
    Insert the Password
Então aprenseta a mensagem Bem vindo, "Usuário"!
    ${toast_mensage} =    Capture element text    ${TOAST_SUCCESS_MENSAGE}
    Should Be Equal    ${toast_mensage}    ${TOAST_SUCCESS_MENSAGE}

Então aprenseta a mensagem de erro ${TOAST_DANGER_MENSAGE} 
    ${toast_mensage} =    Capture element text    ${TOAST_DANGER_MENSAGE}
    Should Be Equal    ${toast_mensage}    ${TOAST_DANGER_MENSAGE}
