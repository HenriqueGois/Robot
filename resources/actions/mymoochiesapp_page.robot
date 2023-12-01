***Settings***
Documentation    Keywords to My Moochies App page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, MyMoochiesApp
    Wait For Elements State    xpath=//img[@alt='Moochies Phone Watches for Kids!']                         visible     30
    Get Element States         xpath=//img[@alt='Moochies Phone Watches for Kids!']                         validate    value | visible
    Get Text                   xpath=//h2[@class='fs-3 mb-3'][contains(.,'Download the MyMoochies App')]    *=          Download the MyMoochies App 
