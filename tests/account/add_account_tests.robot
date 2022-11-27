*** Settings ***
Resource          keywords.robot

Force Tags        3- Criar conta

Suite Setup       Realizar login no Seu Barriga
Suite Teardown    Close Browser
#Test Setup       Set Selenium Speed    0.3

*** Test Cases ***
Adicionar multiplas contas
    #Prioridade: Baixa
    Dado que acesse a pagina de Adicionar Contas
    Quando preencho o nome da conta
    E clico em salvar
    E adicione mais 4 contas
    Então apresenta a mensagem Conta adicionada com sucesso!

Adicionar conta com nome já exsitente
    #Prioridade: Média
    Dado que acesse a pagina de Adicionar Contas
    Quando preencho o nome da conta
    E clico em salvar
    Então apresenta a mensagem Já existe uma conta com esse nome!




