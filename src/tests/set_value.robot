*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

Set Value to given number
    Go To  ${HOME_URL}
    Input Text  name=value  5
    Click Button  xpath=//input[@value='Aseta']
    Page Should Contain  nappia painettu 5 kertaa
    [Teardown]  Close Browser

