*** Settings ***
Library  SeleniumLibrary  screenshot_root_directory=\screenshot
Resource  Resources/Onet.robot
Resource  Resources/Locators.robot

*** Test Cases ***
Valid Login
    [Tags]  Valid
    [Documentation]  This test case check app when user use valid credentials
    Given User is in Onet Poczta site and is not logged in
    And User clicks the Rodo button
    And User inputs the username
    And User inputs the password
    When User clicks the login button
    Then User see the email list
    [Teardown]    Close Browser

Invalid Login
    [Tags]  Invalid
    [Documentation]  This test case check app when user use invalid credentials
    Given User is in Onet Poczta site and is not logged in
    And User clicks the Rodo button
    And User input the invalid login
    And User input the invalid password
    When User clicks the login button
    Then User see an alert about incorrect attempt to log in
    [Teardown]  close browser
