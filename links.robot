*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking logo link
    [Tags]  LINKS_1
    Click Element  css=header > nav > a
	Page Should Contain Element  css=div.search-bar > img

Checking second navigating button
    [Tags]  LINKS_2
    Click Element  css=li:nth-child(2) > a
	Page Should Contain Element  css=body > main > div > a

Checking third navigating button
    [Tags]  LINKS_3
    Click Element  css=li:nth-child(3) > a
	Page Should Contain Element  css=body > main > div > h1

Checking first navigating button
    [Tags]  LINKS_4
    Click Element  css=li:nth-child(1) > a
    Page Should Contain Element  css=div.search-bar > img








    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test