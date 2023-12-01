***Settings***
Documentation    Keywords to Top Uo SimPlane page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, TopUp
    Wait For Elements State    xpath=//img[contains(@alt,'Top Up Your Sim Plan!')]    visible     15
    Get Element States         xpath=//img[contains(@alt,'Top Up Your Sim Plan!')]    validate    value | visible    



Select Sim Plane
    [Arguments]    ${arg_simplane}

    IF         "${arg_simplane}" == "Basic"
    Click      css=.plans-card-button.button-basic a
    ELSE IF    "${arg_simplane}" == "Popular"
    Click      css=.plans-card-button.button-popular a
    END        

Validar card Activate Your Sim Plane
    Wait For Elements State    xpath=//h3[contains(.,'Activate your SIM Card Number')]    visible     15
    Get Element States         xpath=//h3[contains(.,'Activate your SIM Card Number')]    validate    value | visible                  
    Get Text                   xpath=//h3[contains(.,'Activate your SIM Card Number')]    *=          Activate your SIM Card Number

