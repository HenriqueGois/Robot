***Settings***
Documentation    Keywords to Navigation. 
Resource     ../../resources/base.robot

***Keywords***

Click on MenuBar, Navigation
    [Arguments]    ${value_btn}
    Sleep    1s
    Wait For Elements State    xpath=(//button[@type='button'][contains(.,'${value_btn}')])[1]    attached    15
    IF              "${value_btn}" == "Shop"
        Click       xpath=//a[@class='nav-link'][contains(.,'Shop')]
    ELSE            
        Click       xpath=(//button[@type='button'][contains(.,'${value_btn}')])[1]       
    END

Validate dropdown MenuBar, Navigation
    Wait For Elements State    xpath=//a[@class='nav-link dropdown-toggle show']    visible     15
    Get Element States         xpath=//a[@class='nav-link dropdown-toggle show']    validate    value | visible    

Click on submenu MenuBar, Navigation
    [Arguments]    ${value_btn}
    IF    "${value_btn}" == "About"
        Click    xpath=(//a[@href='About'])[1]
    ELSE IF    "${value_btn}" == "Team"
        Click    xpath=(//a[@href='About#TheTeam'])[1]
    ELSE IF    "${value_btn}" == "News"
        Click    xpath=(//a[@href='https://moochies.medium.com/'])[1]
    ELSE IF    "${value_btn}" == "Phone Watches"
        Click    xpath=(//a[@href='PhoneWatches'])[1]
    ELSE IF    "${value_btn}" == "Moochies Connect"
        Click    xpath=(//a[@href='MoochiesConnect'])[1]
    ELSE IF    "${value_btn}" == "Straps"
        Click    xpath=(//a[@href='SwappableStraps'])[1]    
    ELSE IF    "${value_btn}" == "Accessories"
        Click    xpath=(//a[@href='Accessories'])[1]    
    ELSE IF    "${value_btn}" == "MyMoochies"
        Click    xpath=(//a[@href='MyMoochiesApp'])[1]    
    ELSE IF    "${value_btn}" == "Activate"
        Click    xpath=(//a[@href='Activate'])[1]    
    ELSE IF    "${value_btn}" == "Top Up"
        Click    xpath=(//a[@href='TopUp'])[1]    
    ELSE IF    "${value_btn}" == "Sim Support"
        Click    xpath=(//a[@href='Contact'])[1]          
    ELSE IF    "${value_btn}" == "Why Moochies"
        Click    xpath=(//a[@href='WhyMoochies'])[1]    
    ELSE IF    "${value_btn}" == "Charity"  
        Click    xpath=(//a[@href='Charity'])[1]    
    ELSE IF    "${value_btn}" == "Reviews"
        Click    xpath=(//a[@href='https://uk.trustpilot.com/review/moochies.com'])[1]    
    ELSE IF    "${value_btn}" == "Unboxing"
        Click    xpath=(//a[@href='Unboxing'])[1] 
    ELSE IF    "${value_btn}" == "Customer"
        Click    xpath=//a[@class='dropdown-item'][contains(.,'24/7 Customer Support')]    
    ELSE IF    "${value_btn}" == "FAQ"
        Click    xpath=(//a[@href='FAQ'])[1]    
    ELSE IF    "${value_btn}" == "Contact"
        Click    xpath=//a[@class='dropdown-item'][contains(.,'Contact Us')]
    END


Clicar Buy Now sidbar Home
    Wait For Elements State     xpath=//button[@class='button moochies-effect text-light fs-6'][contains(.,'Buy Now')]       attached    15
    Click                       xpath=//button[@class='button moochies-effect text-light fs-6'][contains(.,'Buy Now')]


Click on Cart MenuBar, Navigation
    Wait For Elements State     xpath=(//img[@src='../Images/shop_cart.svg'])[2]    attached    15
    Click                       xpath=(//img[@src='../Images/shop_cart.svg'])[2] 
