*** Settings ***
Library      SeleniumLibrary  screenshot_root_directory=\screenshot
Library      Dialogs
Library      OperatingSystem
Resource     Locators.robot

*** Keywords ***

Open the browser
    Open browser    ${LOGIN URL}   ${BROWSER}

User is in Onet Poczta site and is not logged in
    Title Should Be    Logowanie Poczta Onet | Bezpieczna i darmowa poczta e-mail

User clicks the Rodo button
    Run Keyword And Ignore Error  wait until element is visible  ${rodo}
    Run Keyword And Ignore Error  Click Element  ${rodo}

User inputs the username
    Input Text	${login}	validmail@onet.eu

User inputs the password
    Input Text  ${password}   validpassword

User clicks the login button
    click element  ${loginButton}

User is on mailbox page
    Wait Until Element Is Visible   ${new_mail_button}  timeout=20
    Page should contain element  ${new_mail_button}
    Capture Page Screenshot  maillist.png

User input the invalid login
    Input Text	${login}  blednylogin@onet.pl

User input the invalid password
    Input Text  ${password}   blednehaslo1

User see an alert about incorrect attempt to log in
    wait until element is visible   ${alert}
    get text  ${alert}
    Should Contain Any	${list}  Niepoprawny e-mail lub hasło    Wprowadź poprawne dane.
    Capture Page Screenshot  alert.png