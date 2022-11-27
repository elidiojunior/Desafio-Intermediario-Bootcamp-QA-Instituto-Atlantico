*** Settings ***
Resource    ../global_keywords/keywords.robot
Library    FakerLibrary

*** Variables ***
${LOCATOR_FORM_TYPE_NEGOTIATION}    tipo
@{LOCATOR_TYPE_NEGOTIATION}         Receita    Despesa
${LOCATOR_MOVEMENTE_DATA}           data_transacao
${LOCATOR_PAY_DAY}                  data_pagamento
${LOCATOR_DESCRIPTION}              descricao
${LOCATOR_INTERESTED}               interessado
${LOCATOR_VALUE}                    valor
${LOCATOR_ACCOUNT}                  conta
@{LOCATOR_RADIO_BUTTON_SITUATION}   status_pago    status_pendente
${LOCATOR_SAVE_BUTTON}              Salvar


*** Keywords ***

Create negotiation by account and paid income
    ${CURRENT_DATE}    Current date
    FOR    ${element}    IN    @{ACCOUNTS_NAMES}
    Click Element    ${LOCATOR_FORM_TYPE_NEGOTIATION}
    Click Element    //option[contains(text(),'${LOCATOR_TYPE_NEGOTIATION}[0]')]
    Input Text       ${LOCATOR_MOVEMENTE_DATA}    ${CURRENT_DATE}
    Input Text       ${LOCATOR_PAY_DAY}           ${CURRENT_DATE}
    Input Text       ${LOCATOR_DESCRIPTION}       Descrição do texto
    Input Text       ${LOCATOR_INTERESTED}        Banco
    Input Text       ${LOCATOR_VALUE}             100
    Click Element    ${LOCATOR_ACCOUNT}  
    Click Element    //option[contains(text(),'${element}')]
    Click Element    ${LOCATOR_RADIO_BUTTON_SITUATION}[0]
    Click Button     ${LOCATOR_SAVE_BUTTON}
    END

Create negotiation by account and paid expense
    ${CURRENT_DATE}    Current date
    FOR    ${element}    IN    @{ACCOUNTS_NAMES}
    Click Element    ${LOCATOR_FORM_TYPE_NEGOTIATION}
    Click Element    //option[contains(text(),'${LOCATOR_TYPE_NEGOTIATION}[1]')]
    Input Text       ${LOCATOR_MOVEMENTE_DATA}    ${CURRENT_DATE}
    Input Text       ${LOCATOR_PAY_DAY}           ${CURRENT_DATE}
    Input Text       ${LOCATOR_DESCRIPTION}       Descrição do texto
    Input Text       ${LOCATOR_INTERESTED}        Banco
    Input Text       ${LOCATOR_VALUE}             30
    Click Element    ${LOCATOR_ACCOUNT}  
    Click Element    //option[contains(text(),'${element}')]
    Click Element    ${LOCATOR_RADIO_BUTTON_SITUATION}[0]
    Click Button     ${LOCATOR_SAVE_BUTTON}
    END