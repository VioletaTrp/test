*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot.txt
Resource          ../Locators/Common.robot.txt
Resource          ../Keywords/LogIn.robot.txt
Resource          ../Locators/LogIn.robot.txt

*** Test Cases ***
ValidEmailPassword
    [Setup]    Open Web Side
    Auhentication Page
    LogInEmailPass    domashno@gmail.com    12345
    LogIn Button
    My Accaunt Page
    [Teardown]    Close Browser

InvalidEmailValidPassword
    [Setup]    Open Web Side
    Auhentication Page
    LogInEmailPass    viki_btgmail.com    12345
    LogIn Button
    Error Message
    [Teardown]    Close Browser

ValidEmailEmptyPassword
    [Setup]    Open Web Side
    Auhentication Page
    LogInEmailPass    domashno@gmail.com    ${EMPTY}
    LogIn Button
    Password is Required
    [Teardown]    Close Browser

ForgetPasswordLink
    [Setup]    Open Web Side
    Auhentication Page
    LogInEmailPass    domashno@gmail.com    ${EMPTY}
    Forgot Your Password
    [Teardown]    Close Browser
