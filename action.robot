*** Settings ***
Resource          _resources.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking edit button
    [Tags]  ACTION_1
    Search stub
    Enter search
	Click Link  ${PROCEED_BTN}
	Wait Until Element Is Visible  ${TABLE}
    Click Link  ${EDIT_BTN}
    Popup wait
	Page Should Contain Element  css=div:nth-child(6) > button

Checking delete button
    [Tags]  ACTION_2
    Search stub
    Enter search
    Click Link  ${PROCEED_BTN}
	Wait Until Element Is Visible  ${TABLE}
    Click Link  ${DELETE_BTN}
	Page Should Contain Element  ${PROCEED_BTN}

Checking description button
    [Tags]  ACTION_3
    Search stub
    Enter search
	Click Link  ${PROCEED_BTN}
	Wait Until Element Is Visible  ${TABLE}
    Click Link  ${DESC_BTN}
    Wait Until Element Is Visible  css=#description > div > a
	Page Should Contain Element  css=#description > div > a

Checking proceed button
    [Tags]  ACTION_4
    Search stub
    Enter search
	Click Link  ${PROCEED_BTN}
	Wait Until Element Is Visible  ${TABLE}
    Click Link  ${PROCEED_BTN}
	Page Should Contain  skill

Checking save button
    [Tags]  ACTION_5
    Search stub
    Enter search
	Click Link  ${PROCEED_BTN}
	Wait Until Element Is Visible  ${TABLE}
    Click Link  ${PROCEED_BTN}
    Select Checkbox  css=td:nth-child(1) > input[type="checkbox"]
    Click Button  ${SAVE_BTN}
	Page Should Contain  skill