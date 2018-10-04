*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        chrome firefox
${URL}      http://localhost/
${SEARCH}  div.search-bar > input

*** Keywords ***
Prepare Test Environment
    Open Browser  ${HOST}  ${BROWSER}
    Maximize Browser Window

Enter search
    Press Key  ${SEARCH} \\13