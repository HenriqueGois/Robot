***Settings***
Documentation    Keywords to Unboxing page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, Unboxing
    Wait For Elements State    xpath=//h2[contains(.,'Opening Your Moochies')]    visible     15
    Get Element States         xpath=//h2[contains(.,'Opening Your Moochies')]    validate    value | visible
    Get Text                   xpath=//h2[contains(.,'Opening Your Moochies')]    *=          Opening Your Moochies
