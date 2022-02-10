*** Settings ***
Library   SeleniumLibrary

*** Comments ***
1. navigate to the url https://netbanking.hdfcbank.com/netbanking/Ipin
2.click on go
3.get the next from alert box
5. close the browser

*** Test Cases ***
TC1

  Open Browser    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm     browser=chrome      executable_path=${EXECDIR}/driver/chromedriver
  #Input Text    name=fldLoginUserId    3444841
  Click Element    xpath=//img[@alt='Go']
  Sleep    5s
   ${alert_text}    Handle Alert    action=ACCEPT   timeout=20s
   Log To Console     ${alert_text}
   Close Browser