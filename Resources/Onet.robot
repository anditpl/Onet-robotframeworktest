*** Settings ***
Library  SeleniumLibrary  screenshot_root_directory=\screenshot
Library  Dialogs

*** Keywords ***

User is in Onet Poczta site and is not logged in
    ${new_browser} =  Get Selection From User  In which browser you want to run the test?  chrome  firefox  edge
    Set Global Variable  ${BROWSER}  ${new_browser}
    Open browser    ${LOGIN URL}   ${BROWSER}
    Title Should Be    Onet Poczta – najlepsza skrzynka pocztowa
User clicks the Rodo button
    Run Keyword And Ignore Error  wait until element is visible  ${rodo}
    Run Keyword And Ignore Error  Click Element  ${rodo}
User inputs the username
    Input Text	${login}	validmail@onet.pl
User inputs the password
    Input Text  ${password}   validpassword
User clicks the login button
    click element  ${loginButton}
User see the email list
    page should contain element  ${mailList}
    Capture Page Screenshot  maillist.png
User input the invalid login
    Input Text	${login}  blednylogin@onet.pl
User input the invalid password
    Input Text  ${password}   blednehaslo1
User see an alert about incorrect attempt to log in
    wait until element is visible   ${alert}
    get text  ${alert}
    Should Contain Any	${list}	Niepoprawny e-mail lub hasło.   Wprowadź poprawne dane.
    Capture Page Screenshot  alert.png
