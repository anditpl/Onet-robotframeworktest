*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}          http://www.poczta.onet.pl/
${BROWSER}      Firefox
@{list} =   Niepoprawny e-mail lub hasło.   Wprowadź poprawne dane.
${rodo} =  css=button.cmp-button_button.cmp-intro_acceptAll
${loginButton} =  css=input.loginButton
${login} =  id=f_login
${password} =  id=f_password
${mailList} =  id=NewMail-button
${alert} =  class=messageContent
