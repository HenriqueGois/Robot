***Settings***
Documentation    Keywords to Accessories page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, Accessories
    Wait For Elements State    xpath=//img[contains(@alt,'Customise Your Moochies')]                                                       visible     15
    Get Element States         xpath=//img[contains(@alt,'Customise Your Moochies')]                                                       validate    value | visible
    Get Text                   xpath=//button[@class='w-25 button moochies-effect text-light fs-6'][contains(.,'Shop Accessories Now')]    *=          Accessories 
