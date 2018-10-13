*** Settings ***
Resource          _resources.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking status drop-list in edit popup
    [Tags]  EDIT_1
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Select From List By Index  ${EDIT_STATUS}  1
    Click Button  ${EDIT_SAVE}
	Page Should Contain Element  ${TABLE}

Checking first input with negative test in edit popup
    [Tags]  EDIT_2
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Input Text  ${EDIT_TITLE}  $!%&*~
	Page Should Contain Element  ${TABLE}

Checking first input validation in edit popup
    [Tags]  EDIT_3
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Input Text  ${EDIT_TITLE}  1234567890987654321123456789012345678909
	Page Should Contain Element  ${TABLE}

Checking second input with negative test in edit popup
    [Tags]  EDIT_4
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Input Text  ${EDIT_COMPANY}  $!%&*~
	Page Should Contain Element  ${TABLE}

Checking second input validation in edit popup
    [Tags]  EDIT_5
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Input Text  ${EDIT_COMPANY}  1234567890987654321123456789012345678909
	Page Should Contain Element  ${TABLE}
	
Checking third input with negative test in edit popup
    [Tags]  EDIT_6
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Input Text  ${EDIT_LOCATION}  $!%&*~
	Page Should Contain Element  ${TABLE}
	
Checking third input validation in edit popup
    [Tags]  EDIT_7
    Search stub
    Enter search
	Click Element  ${PROCEED_BTN}
    Click Link  ${EDIT_BTN}
    Popup wait
    Input Text  ${EDIT_LOCATION}  1234567890987654321123456789012345678909
	Page Should Contain Element  ${TABLE}