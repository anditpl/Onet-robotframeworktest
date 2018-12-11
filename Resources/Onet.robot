*** Settings ***
Library  SeleniumLibrary  screenshot_root_directory=\screenshot

*** Keywords ***

User is in Onet Poczta site and is not logged in
    Open browser    ${LOGIN URL}   ${BROWSER}
    Title Should Be    Onet Poczta – najlepsza skrzynka pocztowa
User clicks the Rodo button
    wait until element is visible  ${rodo}
    Click Element  ${rodo}
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
