** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register Form
    Open Browser    url=https://nasscom.in/about-us/career    browser=chrome      executable_path=${EXECDIR}/driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
#    Click Element    partial link=New User
    Click Element    xpath=//a[contains(text(),'New User')]
    Input Text    id=edit-field-fname-reg    Nithish
    Input Text    id=edit-field-lname    vijaysai
    Input Text    id=edit-mail    nithishvjsai@gmail.com
    Input Text    id=edit-field-company-name-registration    LTTS
    Select From List By Label    id=edit-field-business-focus-reg   IT Consulting
    Click Element    name=op
    Close Browser
