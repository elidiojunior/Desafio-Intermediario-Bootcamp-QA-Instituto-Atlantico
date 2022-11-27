*** Settings ***
Resource          keywords.robot

Force Tags        2- Realizar login

Suite Setup       Dado que acesse a pagina de Login
Suite Teardown    Close Browser
#Test Setup       Set Selenium Speed    0.3


*** Test Cases ***
Realizar login com credenciais invalidas
    #Prioridade: Alta
    Quando preenche o Email invalido
    E preenche a Senha invalida
    E clica em Entrar
    Então aprenseta a mensagem de erro Problemas com o login do usuário
Realizar login com sucesso
    #Prioridade: Média
    Quando preenche o Email
    E preenche a Senha
    E clica em Entrar
    Então aprenseta a mensagem Bem vindo, "Usuário"!





