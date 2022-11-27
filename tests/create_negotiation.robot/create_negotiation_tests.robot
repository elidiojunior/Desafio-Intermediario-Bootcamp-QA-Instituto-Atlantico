*** Settings ***
Resource          keywords.robot

Force Tags        4- Criar movimentação

Suite Setup       Realizar login no Seu Barriga
Suite Teardown    Close Browser
#Test Setup       Set Selenium Speed    0.3

*** Test Cases ***
Criar movimentações de receita para cada conta
    #Prioridade: Baixa
    Dado que acesso a pagina de Criar Movimentação
    Quando crio uma negociação de receita paga para cada conta
    Então apresenta a mensagem Movimentação adicionada com sucesso!

Criar movimentações de despesa para cada conta
    #Prioridade: Baixa
    Dado que acesso a pagina de Criar Movimentação
    Quando crio uma negociação de despesa paga para cada conta
    Então apresenta a mensagem Movimentação adicionada com sucesso!