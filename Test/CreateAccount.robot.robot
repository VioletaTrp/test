*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Locators/CreateAccount.robot.txt
Resource          ../Keywords/CreateAccount.robot.txt
Resource          ../Keywords/Common.robot.txt
Resource          ../Locators/Common.robot.txt

*** Test Cases ***
RegisterValidEmail
    [Setup]    Open Web Side
    Auhentication Page
    Email Create Acc    viki_bt991@gmail.com
    Create an Account Button
    Personal Information
    [Teardown]    Close Browser

RegisterInvalidEmail
    [Setup]    Open Web Side
    Auhentication Page
    Email Create Acc    viki_btgmail.com
    Create an Account Button
    Wait Until Element Is Visible    //*[@id="create_account_error"]/ol/li
    [Teardown]    Close Browser

RegisterEmptyLastName
    [Setup]    Open Web Side
    [Template]
    Auhentication Page
    Email Create Acc    viki_bt991@gmail.com
    Create an Account Button
    Personal Information
    Personal Information Filds    Violeta    \    12345    25    6    1991
    Element Should Be Visible    //*[@id="center_column"]/div/ol/li
    [Teardown]    Close Browser

RegisterInvalidPassword
    [Setup]    Open Web Side
    Auhentication Page
    Email Create Acc    viki_bt991@gmail.com
    Create an Account Button
    Personal Information
    Personal Information Filds    Violeta    Trpchevski    123    25    6    1991
    [Teardown]    Close Browser
