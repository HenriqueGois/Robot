***Settings***
Documentation    Keywords to MoochiesConnect page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, MoochiesConnect
    Wait For Elements State    xpath=//img[contains(@alt,'Connect Moochies Phone Watch')]    visible     30
    Get Element States         xpath=//img[contains(@alt,'Connect Moochies Phone Watch')]    validate    value | visible

