*** Settings ***
Resource    ../global_keywords/keywords.robot

*** Variables ***
${LOCATOR_ROW_TABLE_EXTRACT}                //table[@id='tabelaExtrato']//tr
${LOCATOR_FIRST_ELEMENT_REMOVE_EXTRACT}     //table[@id='tabelaExtrato']//tr[1]/td[6]/a[1]/span[1]

*** Keywords ***
Remove negotiation
    Click on table element    ${LOCATOR_ROW_TABLE_EXTRACT}    ${LOCATOR_FIRST_ELEMENT_REMOVE_EXTRACT}