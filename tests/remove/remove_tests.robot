*** Settings ***
Resource          keywords.robot

Force Tags        5- Excluir dados

Suite Setup       Realizar login no Seu Barriga
Suite Teardown    Close Browser
#Test Setup       Set Selenium Speed    0.3

*** Test Cases ***
Excluir Movimentações realizadas
    #Prioridade: Média
    Dado que acesse a pagina de Resumo Mensal
    Quando clico no botão remover movimentação
    Então apresenta mensagem Movimentação removida com sucesso!

Excluir contas criadas
    #Prioridade: Baixa
    Dado que acesse a pagina de Listar Contas
    Quando clico no botão remover de cada conta
    Então apresenta mensagem Conta removida com sucesso!

