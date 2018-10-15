*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}  Chrome
${URL}  http://localhost/
${SEARCH}  css=div.search-bar > input
${EDIT_STATUS}  css=div:nth-child(2) > select
${EDIT_TITLE}  css=div:nth-child(3) > input[type="text"]
${EDIT_COMPANY}  css=div:nth-child(4) > input[type="text"]
${EDIT_LOCATION}  css=div:nth-child(5) > input[type="text"]
${EDIT_SAVE}  css=div:nth-child(6) > button
${TABLE}  css=div > table
${PROCEED_BTN}  css=body > main > div > a
${EDIT_BTN}  css=table > tbody > tr:nth-child(1) > td:nth-child(7) > a.btn.edit_btn
${DELETE_BTN}  css=table > tbody > tr:nth-child(1) > td:nth-child(7) > a.btn.delete_btn
${DESC_BTN}  css=table > tbody > tr:nth-child(1) > td:nth-child(7) > a:nth-child(3)
${TABLE}  css=body > main > div > table\
${SAVE_BTN}  css=body > main > div > form > button

*** Keywords ***
Prepare Test Environment
    Open Browser  ${URL}  ${BROWSER}

Enter search
    Press Key  ${SEARCH}  \\13

Search stub
    Input Text  ${SEARCH}  Automation QA

Popup wait
    Wait Until Element Is Visible  css=#popup > div > form > div:nth-child(2) > label