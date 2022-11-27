*** Settings ***
Resource    ../global_keywords/keywords.robot

*** Variables ***
${LOCATOR_ROW_TABLE_ACCOUNT}               //table[@id='tabelaContas']//tr
${LOCATOR_FIRST_ELEMENT_REMOVE_ACCOUNT}    //table[@id='tabelaContas']//tr[1]/td[2]/a[2]/span[1]

*** Keywords ***
Remove account
    Click on table element    ${LOCATOR_ROW_TABLE_ACCOUNT}    ${LOCATOR_FIRST_ELEMENT_REMOVE_ACCOUNT}