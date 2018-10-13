*** Settings ***
Resource          _resources.robot
Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking search system with using vacancy QA
    [Tags]  SEARCH_1
    Input Text  ${SEARCH}  QA
    Enter search
	Page Should Contain Element  ${TABLE}

Checking search system with using vacancy Java
    [Tags]  SEARCH_2
    Input Text  ${SEARCH}  Java
    Enter search
	Page Should Contain Element  ${TABLE}

Checking search system
    [Tags]  SEARCH_3
    Input Text  ${SEARCH}  -
    Enter search
	Page Should Contain Element  ${TABLE}

Checking search system with special symbol
    [Tags]  SEARCH_4
    Input Text  ${SEARCH}  &
    Enter search
	Page Should Contain Element  ${TABLE}