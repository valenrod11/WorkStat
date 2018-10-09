*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}  chrome
${URL}  http://localhost/
${SEARCH}  div.search-bar > input
${EDIT_STATUS}  div:nth-child(2) > select
${EDIT_TITLE}  div:nth-child(3) > input[type="text"]
${EDIT_COMPANY}  div:nth-child(4) > input[type="text"]
${EDIT_LOCATION}  div:nth-child(5) > input[type="text"]
${EDIT_SAVE}  div:nth-child(6) > button

*** Keywords ***
Prepare Test Environment
    Open Browser  ${BROWSER}
    Maximize Browser Window

Enter search
    Press Key  ${SEARCH} \\13