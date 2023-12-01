***Settings***
Documentation    Keywords to AccessoriesShop page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, AccessoriesShop
    Wait For Elements State    xpath=//img[contains(@alt,'Your Moochies')]               visible     15
    Get Element States         xpath=//img[contains(@alt,'Your Moochies')]               validate    value | visible
    Get Text                   xpath=//h2[contains(.,'Moochies Connect Accessories')]    *=          Accessories 

Select Strap, AccessoriesShop
    [Arguments]                ${arg_strap_color}
    Wait For Elements State    xpath= (//div[contains(@data-type,'Strap')])[${arg_strap_color} ]    visible    15
    Click                      xpath= (//div[contains(@data-type,'Strap')])[${arg_strap_color} ]

Select Extra Cable, AccessoriesShop
    Wait For Elements State    xpath= //div[@class='d-flex justify-content-end align-items-center button moochies-effect clickable'][contains(.,'Extra Cable')]    visible    15
    Click                      xpath= //div[@class='d-flex justify-content-end align-items-center button moochies-effect clickable'][contains(.,'Extra Cable')]

Select Screen Protector, AccessoriesShop
    Wait For Elements State    xpath=//div[@class='d-flex justify-content-end align-items-center button moochies-effect'][contains(.,'Screen Protector')]    visible    15
    Click                      xpath=//div[@class='d-flex justify-content-end align-items-center button moochies-effect'][contains(.,'Screen Protector')]

Click on Add to Cart, AccessoriesShop
    Wait For Elements State    xpath=//button[@type='button'][contains(.,'Add to Cart')]    visible    15
    Click                      xpath=//button[@type='button'][contains(.,'Add to Cart')]