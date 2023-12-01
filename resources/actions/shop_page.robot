***Settings***
Documentation    Keywords to Shop page.
Resource     ../../resources/base.robot

***Keywords***
Validate page, Shop
    Wait For Elements State    xpath=//div[@class='shop-items-title'][contains(.,'Accessories')]    visible     15               
    Get Element States         xpath=//div[@class='shop-items-title'][contains(.,'Accessories')]    validate    value | visible

Click on Buy Now Connect, Shop
    Wait For Elements State    xpath=//button[@href='ShopConnect']    visible    15  
    Click                      xpath=//button[@href='ShopConnect']

Click on Accessories, Shop
    Wait For Elements State    xpath=//button[@href='AccessoriesShop']    visible    15  
    Click                      xpath=//button[@href='AccessoriesShop']
