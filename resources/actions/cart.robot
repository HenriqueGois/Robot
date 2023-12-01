***Settings***
Documentation    Keywords to cart
Resource     ../../resources/base.robot

***Keywords***

Validate empty Cart, Cart
    Wait For Elements State    xpath=//h3[contains(.,'Your Cart (0)')]                              visible     15 
    Get Element States         xpath=//p[contains(.,'Your Cart is Empty!')]                         validate    value | visible
    Get Element States         xpath=//p[@class='CartModalFooterPriceValue'][contains(.,'0.00')]    validate    value | visible
    Get Text                   xpath=//p[@class='CartModalFooterPriceValue'][contains(.,'0.00')]    *=          0.00               

Validate total products in Cart, Cart
    [Arguments]                ${quantity}                                          
    Wait For Elements State    xpath=//h3[contains(.,'Your Cart (${quantity})')]    visible    15 
    Get Text                   xpath=//h3[contains(.,'Your Cart (${quantity})')]    *=         ${quantity}    

Validate products in Cart, Cart
    [Arguments]    ${product}    ${color}

    Wait For Elements State    xpath=//article[@id='CartModalInner']    visible    15 
    IF    "${product}" == "Connect"
        Get Text    xpath=//article[@id='CartModalInner'][contains(.,'Product: MOOCHIES CONNECT SMARTWATCH 4G')]    *=    CONNECT
        IF    "${color}" == "Black"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'Product: MOOCHIES CONNECT SMARTWATCH 4G - BLACK')]    *=    BLACK    
        ELSE IF    "${color}" == "White"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'Product: MOOCHIES CONNECT SMARTWATCH 4G - WHITE')]    *=    WHITE    
        ELSE 
            Fail	Argumento de cor invalido para o Coonect
        END
    ELSE IF    "${product}" == "Straps"
        Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    STRAP
        IF    "${color}" == "Snake"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    SNAKE
        ELSE IF    "${color}" == "BlueGeo"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    BLUE GEO
        ELSE IF    "${color}" == "Cat"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    CAT
        ELSE IF    "${color}" == "Dino"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    DINO
        ELSE IF    "${color}" == "Donut"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    DONUT
        ELSE IF    "${color}" == "Graffiti"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    GRAFFITI
        ELSE IF    "${color}" == "Love"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    LOVE
        ELSE IF    "${color}" == "Monster"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    MONSTER
        ELSE IF    "${color}" == "PinkGeometric"
            Get Text    xpath=//article[@id='CartModalInner'][contains(.,'STRAP')]    *=    PINK GEO    
        ELSE 
            Fail	Argumento de cor invalida para Strap
        END
    ELSE IF    "${product}" == "Extra Cable"
        Get Text    xpath=//article[@id='CartModalInner'][contains(.,'MOOCHIES CONNECT CHARGING CABLE')]    *=    CHARGING CABLE
    ELSE IF    "${product}" == "Screen Protector"
        Get Text    xpath=//article[@id='CartModalInner'][contains(.,'MOOCHIES CONNECT SCREEN PROTECTOR')]    *=    SCREEN PROTECTOR
    ELSE 
        Fail	Argumento de Product Invalido
    END

Click on Proceed to Checkout, Cart
    Wait For Elements State    xpath=//a[@class='CartModalFooterButtonsProceed active']    visible    15 
    Click                      xpath=//a[@class='CartModalFooterButtonsProceed active']

Click on Clear Shooping, Cart
    Wait For Elements State    xpath=//div[contains(@onclick,'clearCart()')]    visible    15 
    Click                      xpath=//div[contains(@onclick,'clearCart()')]

Click on +, Cart
    Wait For Elements State    xpath=//div[@class='CartModalInnerItemCardInformationDataQntCtrlPlus'][contains(.,'+')]    visible    15 
    Click                      xpath=//div[@class='CartModalInnerItemCardInformationDataQntCtrlPlus'][contains(.,'+')]

Click on -, Cart
    Wait For Elements State    xpath=//div[contains(@class,'CartModalInnerItemCardInformationDataQntCtrlMinus')]    visible    15 
    Click                      xpath=//div[contains(@class,'CartModalInnerItemCardInformationDataQntCtrlMinus')]
