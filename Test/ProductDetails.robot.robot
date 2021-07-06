*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot.txt
Resource          ../Locators/Common.robot.txt
Resource          ../Keywords/ProductDetails.robot.txt
Resource          ../Locators/ProductDetails.robot.txt

*** Test Cases ***
ModelDemo_1
    [Setup]    Open Web Side
    Logo
    Women Categori
    Subcategori Tops
    Title Sub    TOPS
    More Button Model 1
    Title Product    Faded Short Sleeve T-shirts
    Price visible
    Quantity Select
    Color Select
    Wait Until Element Is Visible    ${pic}
    Add To Cart
    [Teardown]    Close Browser

ModelDemo_2
    [Setup]    Open Web Side
    Logo
    Women Categori
    Subcategori Tops
    Title Sub    TOPS
    Mein Pic Model 2
    Title Product    Blouse
    Price visible
    Quantity Select
    Add To Cart
    [Teardown]    Close Browser

ModelDemo_3
    [Setup]    Open Web Side
    Logo
    Women Categori
    Dress Categori
    Cassuel Dress
    Title Sub    CASUAL DRESSES
    More Button Model 3
    Title Product    Printed Dress
    Value
    Add To Cart
    [Teardown]    Close Browser
