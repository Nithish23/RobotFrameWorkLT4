
*** Variables ***

${name}     Nithish
@{colors}   red   blue   yellow  black
&{employee}  empid=46566  name=Nithish  age=22

*** Test Cases ***
TC1
  Log To Console    ${EXECDIR}
  Log To Console    ${CURDIR}
  Log To Console    ${TEMPDIR}
  Log To Console    ${SUITE_NAME}
  Log To Console    ${TEST_NAME}
  Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe
  Log To Console    ${OUTPUT_DIR}
  Log To Console    ${name} 
  Log To Console    ${colors}
  Log To Console    ${colors}[0]

TC2
   ${count}  Get Length    ${colors}
   Log To Console    ${count}

     FOR    ${i}   IN RANGE   0   2   1
       Log To Console    ${colors}[${i}]

     END

TC3
     FOR    ${i}   IN    ${colors}
       Log To Console    ${i}

     END

TC4
     Log To Console    ${employee}