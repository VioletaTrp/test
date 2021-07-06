*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot.txt
Resource          ../Keywords/ProductDetails.robot.txt
Resource          ../Locators/Common.robot.txt
Resource          ../Locators/ProductDetails.robot.txt
Library           String

*** Variables ***
${cart}           //*[@id="header"]/div[3]/div/div/div[3]/div/a

*** Test Cases ***
DeliteItems
    [Setup]    Open Web Side
    Logo
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
    Continue Shopping Button
    ${cart}    Get Text    //*[@id="header"]/div[3]/div/div/div[3]/div/a/span[1]
    IF    ${cart}>0
    Empty Shopping Cart
    END
    [Teardown]

*** Keywords ***
Empty Shopping Cart
    Click Element    ${cart}
    Wait Until Element Is Visible    ${cartSummary}
    ${numberofproducts}    Get Element Count    /html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[7]/div/a/i
    FOR    ${i}    IN RANGE    0    ${numberofproducts}
        Click Element    (/html/body/div/div[2]/div/div[3]/div/div[2]/table/tbody/tr/td[7]/div/a/i)[1]    ${removeFirstProduct}
        Sleep    2s
    END
