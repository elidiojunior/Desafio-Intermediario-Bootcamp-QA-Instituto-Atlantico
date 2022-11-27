*** Settings ***
Resource    ../../global_keywords/keywords.robot
Resource    ../../page_objects/registration_page.robot

*** Keywords ***
Dado que acesse a pagina de Cadastro
    Open browser on Registration page
Quando preenche o Nome
    Insert the Name
E preenche com um email já cadastrado
    Insert email already registered
E preenche a Senha
    registration_page.Insert the Password
E clica em Cadastrar
    Click on Register
E preenche o Email
    registration_page.Insert the Email
Então apresenta a mensagem ${REGISTERED_MESSAGE}
    ${toast_message} =    Capture element text   ${REGISTERED_MESSAGE}
    Should Be Equal    ${toast_message}    ${REGISTERED_MESSAGE}
