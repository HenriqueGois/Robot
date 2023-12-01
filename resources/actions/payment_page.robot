***Settings***
Documentation    Keywords to Payment page.
Resource     ../../resources/base.robot

***Keywords***
Validate page, Payment
    Wait For Elements State    xpath=//h1[contains(.,'Your Bag')]    visible     15
    Get Element States         xpath=//h1[contains(.,'Your Bag')]    validate    value | visible
    Wait For Elements State    xpath=//h1[contains(.,'Payment Method')]    visible     15
    Get Element States         xpath=//h1[contains(.,'Payment Method')]    validate    value | visible    

Validate Watche, Payment
    [Arguments]    ${arg_modelo}    ${arg_cor}
    IF    "${arg_modelo}" == "Connect"    
        Get Text    xpath=//div[@class='col-7 align-self-center'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G')]    *=    CONNECT    
        IF     "${arg_cor}" == "Black"   
            Get Text    xpath=//div[@class='col-7 align-self-center'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G - BLACK')]    *=    BLACK
        ELSE IF    "${arg_cor}" == "White"    
            Get Text    xpath=//div[@class='col-7 align-self-center'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G - WHITE')]    *=    WHITE
        END
    END

Validate Strap, Payment
    [Arguments]    ${arg_strap}
    Wait For Elements State     xpath=//img[@src='/Images/Connect${arg_strap}.png']     visible     15
    Get Element States          xpath=//img[@src='/Images/Connect${arg_strap}.png']                           validate    value | visible
    Get Text                    xpath=//div[@class='col-7 align-self-center'][contains(.,'STRAP[Remove]')]    *=          STRAP

Click on Visa/Martercard, Payment
    Wait For Elements State     xpath=//img[@id='StripeLogo']     visible     15
    Click                       xpath=//img[@id='StripeLogo']

Validate field card, Payment
   Wait For Elements State      xpath=(//div[contains(@class,'d-flex')])[20]     visible     15
    Get Element States          xpath=(//div[contains(@class,'d-flex')])[20]    validate    value | visible
