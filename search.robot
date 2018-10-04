*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking logo link
    [Tags]  SEARCH_1
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking second navigating button
    [Tags]  SEARCH_2
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking third navigating button
    [Tags]  SEARCH_3
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking first navigating button
    [Tags]  SEARCH_4
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking "Proceed" button
    [Tags]  SEARCH_5
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element