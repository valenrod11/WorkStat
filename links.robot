*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking logo link
    [Tags]  LINKS_1
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking second navigating button
    [Tags]  LINKS_2
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking third navigating button
    [Tags]  LINKS_3
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking first navigating button
    [Tags]  LINKS_4
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element

Checking "Proceed" button
    [Tags]  LINKS_5
    Click Element  css=li:nth-child(1) > a > span
	Wait Until Element Is Visible  css=li:nth-child(1) > a:nth-child(1)
	Mouse Over  css=li:nth-child(1) > a:nth-child(1)
	Click Element  css=li:nth-child(1) > ul > li:nth-child(2)
	Page Should Contain Element









    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test