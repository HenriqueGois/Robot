***Settings***
Documentation    Keywords to Charity page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, Charity
    Wait For Elements State    xpath=//h1[contains(.,'Moochies for Social and Environmental Good')]    visible     15
    Get Element States         xpath=//h1[contains(.,'Moochies for Social and Environmental Good')]    validate    value | visible
    Get Text                   xpath=//h1[contains(.,'Moochies for Social and Environmental Good')]    *=          Moochies for Social and Environmental Good
