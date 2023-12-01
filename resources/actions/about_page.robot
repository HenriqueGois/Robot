***Settings***
Documentation    Keywords to About page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, About
    Wait For Elements State    xpath=//h1[@class='fs-1 mb-5 mt-3'][contains(.,'Where It All Started')]    visible     15
    Get Element States         xpath=//h1[@class='fs-1 mb-5 mt-3'][contains(.,'Where It All Started')]    validate    value | visible
    Get Text                   xpath=//h1[@class='fs-1 mb-5 mt-3'][contains(.,'Where It All Started')]    *=          Where It All Started    
