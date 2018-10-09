*** Settings ***
Resource          _resources.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking status drop-list in edit popup
    [Tags]  EDIT_1
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Select From List By Index  ${EDIT_STATUS} 1
    Click Button  ${EDIT_SAVE}
	Page Should Contain Element  css=div:nth-child(6) > button

Checking first input with negative test in edit popup
    [Tags]  EDIT_2
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Input Text  ${EDIT_TITLE} $!%&*~
	Page Should Contain Element  css=div:nth-child(6) > button

Checking first input validation in edit popup
    [Tags]  EDIT_3
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Input Text  ${EDIT_TITLE} 1234567890987654321123456789012345678909
	Page Should Contain Element  css=div:nth-child(6) > button

Checking second input with negative test in edit popup
    [Tags]  EDIT_4
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Input Text  ${EDIT_COMPANY} $!%&*~
	Page Should Contain Element  css=div:nth-child(6) > button

Checking second input validation in edit popup
    [Tags]  EDIT_5
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Input Text  ${EDIT_COMPANY} 1234567890987654321123456789012345678909
	Page Should Contain Element  css=div:nth-child(6) > button
	
Checking third input with negative test in edit popup
    [Tags]  EDIT_6
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Input Text  ${EDIT_LOCATION} $!%&*~
	Page Should Contain Element  css=div:nth-child(6) > button
	
Checking third input validation in edit popup
    [Tags]  EDIT_7
    Input Text  ${SEARCH} Paskal
    Enter search
	Click Element  css=body > main > div > a
    Click Button  css=li:td:nth-child(7) > a.btn.edit_btn
    Input Text  ${EDIT_LOCATION} 1234567890987654321123456789012345678909
	Page Should Contain Element  css=div:nth-child(6) > button