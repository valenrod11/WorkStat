*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        chrome
${URL}      localhost
${CONFIRM}     css=#simplecheckout_button_confirm
${IN_CART}     css=#button-cart
${CART}     css=#cart
${SORT}     css=#select2-input-sort-container
${BTN_CHECKOUT}     css=a.btn-home.btn-checout
${EDIT_CART}    css=div.calc-block > a
${CLEAR_BTN}    td:nth-child(5) > div > button

*** Keywords ***
Prepare Test Environment
    Open Browser  ${HOST}  ${BROWSER}
    Maximize Browser Window

Login
    Input Text  css=#input-email ${LOGIN}
	Input Text  css=#input-password ${PASS}
	Click Button  css=form > input