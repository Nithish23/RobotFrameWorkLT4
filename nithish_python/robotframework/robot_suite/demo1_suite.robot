*** Settings ***
Library  DateTime

*** Test Cases ***
TC1 print name
    Log To Console    Hello

TC2 pint Date
    ${date}     Get Current Date
    Log To Console    ${date}

Tc3 store Data
     Set Local Variable    ${name}      Nithish
     Log To Console    ${name}
     Log    Hiee,${name}

 ##store and add two numbers

TC4 add numbers
       Set Local Variable    ${number 1}   20
        Set Local Variable    ${number 2}   30 
        Set Local Variable    ${add}         ${${number 1}+${number 2}}
        Log To Console    ${add}
        
TC5 area of circle
          Set Local Variable    ${radius}   12
          Set Local Variable    ${pie}       3.14
          ${res}    Evaluate    ${radius}*${pie}*${radius}
          Log To Console    ${res}cm2

##IF STATEMENTS

TC6
           Set Local Variable    ${browser}   chrome
           IF    '${browser}' == 'chrome'
                
                Log To Console    YES! its chrome
           END
                 Log To Console    NO

 ##IF ELSE
TC7
           Set Local Variable    ${browser}   chrome
            IF    '${browser}' == 'chrome'

                Log To Console    YES! its chrome
           ELSE
                 Log To Console    NO!
           END

TC8
           FOR    ${i}    IN RANGE    1    12    1
               Log To Console    ${i}

           END