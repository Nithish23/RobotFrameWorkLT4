*** Settings ***

Library   SeleniumLibrary
Library    OperatingSystem
Library    XML


*** Test Cases ***
TC1 valid login
   Append To Environment Variable   path  ${EXECDIR}\\driver
   Open Browser  url=https://opensource-demo.orangehrmlive.com/    browser=chrome    executable_path=${EXECDIR}/driver/chromedriver
   Input Text     id=txtUsername    Admin
   Input Password   id=txtPassword    admin123

   Click Element  name=Submit


   #Append To Environment Variable   path  ${EXECDIR}\\driver
   Open Browser  url=https://opensource-demo.orangehrmlive.com/    browser=chrome    executable_path=${EXECDIR}/driver/chromedriver

   ${url}   Get Location
   Click Element  id=welcome
   Clear Element  link=Logout