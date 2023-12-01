***Settings***
Documentation    Keywords to FAQ page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, FAQ
    Wait For Elements State    xpath=//h1[contains(.,'Frequently Asked Questions')]    visible     30
    Get Element States         xpath=//h1[contains(.,'Frequently Asked Questions')]    validate    value | visible
    Get Text                   xpath=//h1[contains(.,'Frequently Asked Questions')]    *=          Frequently Asked Questions
