***Settings***
Documentation    Keywords to Activate SimPlane page.
Resource     ../../resources/base.robot

***Keywords***

Validate page, ActivateSIM
    Wait For Elements State    xpath=//img[contains(@alt,'Activate your SIM Plan!')]                 visible     15
    Get Element States         xpath=//img[contains(@alt,'Activate your SIM Plan!')]                 validate    value | visible         
    Get Text                   xpath=//h1[@class='fs-1 mb-3'][contains(.,'Select Your SIM Plan')]    *=          Select Your SIM Plan

Select Sim Plane
    [Arguments]    ${arg_simplane}

    IF         "${arg_simplane}" == "Basic"
        Click      css=.plans-card-button.button-basic a
    ELSE IF    "${arg_simplane}" == "Popular"
        Click      css=.plans-card-button.button-popular a
    ELSE 
        Fail	Argumento de Sim Plane Invalido
    END        

Validar card Activate Your Sim Plane
    Wait For Elements State    xpath=//h3[contains(.,'Activate your SIM Card Number')]    visible     30
    Get Element States         xpath=//h3[contains(.,'Activate your SIM Card Number')]    validate    value | visible                  
    Get Text                   xpath=//h3[contains(.,'Activate your SIM Card Number')]    *=          Activate your SIM Card Number


