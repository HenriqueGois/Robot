***Settings***
Documentation    Keywords to Swappable Straps page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, Strap
    Wait For Elements State    xpath=//img[contains(@alt,'Customise Your Moochies')]    visible     15
    Get Element States         xpath=//img[contains(@alt,'Customise Your Moochies')]    validate    value | visible
    Get Text                   xpath=(//button[contains(.,'Shop Straps')])[1]           *=          Straps 
