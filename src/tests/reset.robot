*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

Given the counter has a nonzero value
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina

When the counter is reset
    Go To  ${HOME_URL}
    Click Button  Nollaa
    
Then the counter value should be zero
    Go To  ${HOME_URL}
    Page Should Contain  nappia painettu 0 kertaa