*** Settings ***
#Resource          _resource.robot
#Test Setup        Prepare Test Environment
Test Teardown     Close All Browsers

*** Test Cases ***
Checking search system with using vacancy QA
    [Tags]  SEARCH_1
    Input Text  ${SEARCH} QA
    Enter search
	Page Should Contain Element  css=body > main > div > a

Checking search system with using vacancy Java
    [Tags]  SEARCH_2
    Input Text  ${SEARCH} Java
    Enter search
	Page Should Contain Element  css=body > main > div > a

Checking search system
    [Tags]  SEARCH_3
    Input Text  ${SEARCH} -
    Enter search
	Page Should Contain Element  css=body > main > div > a

Checking search system with special symbol
    [Tags]  SEARCH_4
    Input Text  ${SEARCH} &
    Enter search
	Page Should Contain Element  css=body > main > div > a

Checking search system with empty input
    [Tags]  SEARCH_5
    Input Text  ${SEARCH}
    Enter search
	Page Should Contain Element  css=body > main > div > a