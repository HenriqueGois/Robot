***Settings***
Documentation    Keywords to Contact page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, Contact
    Wait For Elements State    xpath=//img[contains(@class,'lazy w-75 my-3')]                   visible     30
    Get Element States         xpath=//img[contains(@class,'lazy w-75 my-3')]                   validate    value | visible    
    Get Text                   xpath=//h1[@class='fs-1 fw-bold'][contains(.,'Get In Touch')]    *=          Get In Touch
