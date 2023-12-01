***Settings***
Documentation    Keywords to My Moochies page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, MyMoochies
    Wait For Elements State    xpath=//video[@poster='../Images/video_poster_widescreen.png'][contains(.,'Video Not Supported')]    visible     30
    Get Element States         xpath=//video[@poster='../Images/video_poster_widescreen.png'][contains(.,'Video Not Supported')]    validate    value | visible
    Get Text                   xpath=//h1[contains(.,'Giving Them Freedom While Keeping Them Safe')]                                *=          Giving Them Freedom While Keeping Them Safe 
