*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}          http://www.poczta.onet.pl/
${BROWSER}      Chrome
@{list} =   Niepoprawny e-mail lub hasło.   Wprowadź poprawne dane.
${rodo} =  css=button.cmp-button_button.cmp-intro_acceptAll
${loginButton} =  css=.bTIEFn
${login} =  id=email
${password} =  id=password
${new_mail_button} =  xpath=//span[contains(text(),'Napisz wiadomość')]
${alert} =  css=.hitDDR