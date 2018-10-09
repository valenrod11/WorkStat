*** Settings ***
Resource          _resources.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking edit button
    [Tags]  ACTION_1
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
	Page Should Contain Element  css=div:nth-child(6) > button

Checking delete button
    [Tags]  ACTION_2
    Input Text  ${SEARCH} Paskal
    Enter search
    Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.delete_btn
	Page Should Contain Element  css=body > main > div > a

Checking description button
    [Tags]  ACTION_3
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a:nth-child(3)
	Page Should Contain Element  css=#description > div > a

Checking proceed button
    [Tags]  ACTION_4
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Button  css=body > main > div > a
	Wait Until Element Is Visible  css=body > main > div > a
    Click Button  css=body > main > div > a
	Page Should Contain Element  css=body > main > div > h1

Checking save button
    [Tags]  ACTION_5
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Button  css=body > main > div > a
	Wait Until Element Is Visible  css=body > main > div > a
    Click Button  css=body > main > div > a
    Click Element  css=td:nth-child(1) > input[type="checkbox"]
    Click Button  css=form > button
	Page Should Contain Element  css=body > main > div > h1