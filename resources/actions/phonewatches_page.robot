***Settings***
Documentation    Keywords to PhoneWatches page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, PhoneWatches
    Wait For Elements State    xpath=//h1[@class='fs-1 fw-bold my-5 my-lg-0'][contains(.,'Features Designed for Safety and Freedom')]    visible    15
    Get Text                   xpath=//h1[@class='fs-1 fw-bold my-5 my-lg-0'][contains(.,'Features Designed for Safety and Freedom')]    *=         Features Designed for Safety and Freedom    
