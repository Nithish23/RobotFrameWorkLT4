*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
       Open Browser   url=https://demo.openemr.io/b/openemr/index.php   browser=chrome   executable_path=${EXECDIR}/driver/chromedriver
       Maximize Browser Window
       Set Selenium Implicit Wait    5s
       Input Text    id=authUser    admin
       Input Password    id=clearPass    pass
       Select From List By Label    name=languageChoice   English (Indian)
       Click Element    xpath=//button[@type='submit']
       ${title}   Get Title
       Log To Console    ${title}
       Title Should Be    openEMR
       Close Browser