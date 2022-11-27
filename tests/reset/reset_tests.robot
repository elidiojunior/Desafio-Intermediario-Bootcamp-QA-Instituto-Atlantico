*** Settings ***
Resource          keywords.robot

Force Tags        6- Resetar dados

Suite Setup       Realizar login no Seu Barriga
Suite Teardown    Close Browser
#Test Setup       Set Selenium Speed    0.3

*** Test Cases ***
Realizar reset dos dados cadastrados
    #Prioridade: Alta
    Dado que acesse a pagina Home
    Quando clicar no botão Reset 
    Então apresenta mensagem Dados resetados com sucesso!
    E limpa todos os dados das contas