*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot.txt
Resource          ../Locators/Common.robot.txt
Resource          ../Keywords/ProductDetails.robot.txt
Resource          ../Locators/ProductDetails.robot.txt
Resource          ../Keywords/LogIn.robot.txt
Resource          ../Locators/LogIn.robot.txt
Resource          ../Locators/CheckOut.robot.txt
Resource          ../Keywords/CheckOut.robot.txt

*** Test Cases ***
Check Out
    [Setup]    Open Web Side
    Auhentication Page
    LogInEmailPass    domashno@gmail.com    12345
    LogIn Button
    Women Categori
    Subcategori Tops
    Title Sub    TOPS
    More Button Model 1
    Title Product    Faded Short Sleeve T-shirts
    Quantity Select
    Color Select
    Add To Cart
    Continue Shopping Button
    Dress Categori
    Cassuel Dress
    Title Sub    CASUAL DRESSES
    More Button Model 3
    Title Product    Printed Dress
    Value
    Add To Cart
    Proceed To Checkout
    payment Method
    Complite Order
    Signout Button
    [Teardown]    Close Browser
