***Settings***
Documentation    Keywords para ShopConnect page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, ShopConnect
    Wait For Elements State    xpath=//h1[@class='phonewatch-information-header-title'][contains(.,'Moochies Connect')]    visible     15
    Get Element States         xpath=//h1[@class='phonewatch-information-header-title'][contains(.,'Moochies Connect')]    validate    value | visible    

Select Color Connect, ShopConnect
    [Arguments]                ${arg_connect_color}
    Wait For Elements State    xpath= //div[contains(@id,'MW14WHT')]    visible    15
    Click                      xpath= //div[contains(@id,'MW14WHT')]

Select Strap, ShopConnect
    [Arguments]                ${arg_strap_color}
    Wait For Elements State    xpath= (//div[contains(@data-type,'Strap')])[${arg_strap_color} ]    visible    15
    Click                      xpath= (//div[contains(@data-type,'Strap')])[${arg_strap_color} ]

Select Extra Cable, ShopConnect
    Wait For Elements State    xpath=//div[contains(@data-type,'Cable')]    visible    15
    Click                      xpath=//div[contains(@data-type,'Cable')]

Select Screen Protector, ShopConnect
    Wait For Elements State    xpath=//div[contains(@data-type,'Protector')]    visible    15
    Click                      xpath=//div[contains(@data-type,'Protector')]

Click on Add To Cart, ShopConnect
    Wait For Elements State    xpath=//p[contains(.,'Add to Cart')]    visible    15
    Click                      xpath=//p[contains(.,'Add to Cart')]
