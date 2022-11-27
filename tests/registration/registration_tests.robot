*** Settings ***
Resource          keywords.robot

Force Tags        1- Cadastrar conta

Suite Setup       Dado que acesse a pagina de Cadastro
Suite Teardown    Close Browser
#Test Setup       Set Selenium Speed    0.3

*** Test Cases ***
Realizar cadastro com email já existente
    #Prioridade: Alta
    Quando preenche o Nome
    E preenche com um email já cadastrado
    keywords.E preenche a Senha
    E clica em Cadastrar
    Então apresenta a mensagem Endereço de email já utilizado

Realizar cadastro de um novo usuário
    #Prioridade: Alta
    Quando preenche o Nome
    E preenche o Email
    keywords.E preenche a Senha
    E clica em Cadastrar
    Então apresenta a mensagem Usuário inserido com sucesso



