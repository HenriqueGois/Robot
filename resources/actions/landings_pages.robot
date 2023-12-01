***Settings***
Documentation    Keywords to landing spages. 
Resource     ../../resources/base.robot

***Variables***
${url_base}    https://moochies.com/en-

***Keywords***
Access Landingpage
    [Arguments]                ${arg_pais_maiusclo+url_contexto}               
    New Browser                chromium                                        false
    New Page                   ${url_base}${arg_pais_maiusclo+url_contexto}
    Wait For Elements State    id=c-p-bn                                       visible    30
    Click                      id=c-p-bn

Validate Model, LandingPage

    [Arguments]    ${arg_watch_model}                                       
    Get Text       xpath=//h1[contains(.,'Moochies ${arg_watch_model}')]    *=    ${arg_watch_model}

    Get Text    xpath=//strong[contains(.,'Moochies ${arg_watch_model} Phone Watch')]    *=    ${arg_watch_model}

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}')])[1]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}')])[5]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}')])[6]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}')])[7]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}')])[8]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}')])[4]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}')])[5]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}')])[6]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}')])[7]    validate    value | visible

    Get Element States    xpath=//img[@src='./landingpages/assets/connect_logo.png']    validate    value | visible

    Get Element States    xpath=(//img[contains(@alt,'Connect Phone Watch')])[2]    validate    value | visible



Validate Price, LandingPage

    [Arguments]    ${arg_price}                                      
    Get Text       xpath=//span[@class='watch-price-placeholder']    *=    ${arg_price}    


Validate watch Color, LandingPage

    [Arguments]    ${arg_watch_model}    ${arg_watch_color}

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}')])[1]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}')])[5]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}')])[6]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}')])[7]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}')])[8]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}')])[4]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}')])[5]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}')])[6]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}')])[7]    validate    value | visible

Validate strap Color, LandingPage

    [Arguments]    ${arg_watch_model}    ${arg_watch_color}    ${arg_cor_strap}    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[1]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[5]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[6]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[7]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'Images/connectStrapColors/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[8]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[4]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[5]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[6]    validate    value | visible    

    Get Element States    xpath=(//img[contains(@src,'./landingpages/assets/${arg_watch_model}${arg_watch_color}${arg_cor_strap}')])[7]    validate    value | visible

Validate Especial Offer, LandingPage
    Wait For Elements State    xpath=//img[@src='../../Images/lp_bonus_strap.png']      attached    15
    Wait For Elements State    xpath=//img[@src='../../Images/lp_special_offer.png']    attached    15                 
    Get Element States         xpath=//img[@src='../../Images/lp_bonus_strap.png']      validate    value | visible
    Get Element States         xpath=//img[@src='../../Images/lp_special_offer.png']    validate    value | visible

Click on Buy Now, LandingPage
    Wait For Elements State    xpath=//p[contains(.,'BUY NOW')]       visible    15
    Click                      xpath=//p[contains(.,'BUY NOW')]/..

Validar PopoUp compra Landingpage
    Wait For Elements State    xpath=//h1[contains(.,'Your Bag:')]    attached    15
    Wait For Elements State    xpath=//h1[contains(.,'Your Bag:')]    visible     15
    Get Text                   xpath=//h1[contains(.,'Your Bag:')]    *=          Your Bag


Validar Produtos no PopoUp compra sem Strap Landingpage
    [Arguments]                ${cor_relogio}                                                                          
    Wait For Elements State    xpath=(//img[contains(@src,'/Images/01-Connect_${cor_relogio}_${cor_relogio}.png')])    attached    15
    Get Element States         xpath=(//img[contains(@src,'/Images/01-Connect_${cor_relogio}_${cor_relogio}.png')])    validate    value | visible
    IF                         "${cor_relogio}" == "Black"                                                             

    Get Text    xpath=//div[@class='col-8 align-self-center fs-6'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G - BLACK')]    *=    BLACK 

    ELSE IF    "${cor_relogio}" == "White"    

    Get Text    xpath=//div[@class='col-8 align-self-center fs-6'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G - WHITE')]    *=    WHITE

    END


Validar Produtos no PopoUp compra Landingpage
    [Arguments]                ${cor_relogio}                                                                          ${arg_modelo_pulseira}    
    Wait For Elements State    xpath=(//img[contains(@src,'/Images/01-Connect_${cor_relogio}_${cor_relogio}.png')])    attached                  15
    Wait For Elements State    xpath=(//img[contains(@src,'/Images/Connect${arg_modelo_pulseira}.png')])               visible                   15
    Get Element States         xpath=(//img[contains(@src,'/Images/01-Connect_${cor_relogio}_${cor_relogio}.png')])    validate                  value | visible
    Get Element States         xpath=(//img[contains(@src,'/Images/Connect${arg_modelo_pulseira}.png')])               validate                  value | visible

    IF    "${cor_relogio}" == "Black"    

    Get Text    xpath=//div[@class='col-8 align-self-center fs-6'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G - BLACK')]    *=    BLACK 

    ELSE IF    "${cor_relogio}" == "White"    

    Get Text    xpath=//div[@class='col-8 align-self-center fs-6'][contains(.,'1 x MOOCHIES CONNECT SMARTWATCH 4G - WHITE')]    *=    WHITE

    END

Clicar no Checkout Landingpage
    Wait For Elements State    xpath=//a[@class='text-decoration-none text-white'][contains(.,'Checkout')]    attached    15
    Wait For Elements State    xpath=//a[@class='text-decoration-none text-white'][contains(.,'Checkout')]    visible     15
    Click                      xpath=//a[@class='text-decoration-none text-white'][contains(.,'Checkout')]

Validar preco no PopoUp compra Landingpage
    [Arguments]    ${arg_preco_final}
    Get Text       xpath=//div[@class='col-2 fw-bold'][contains(.,'${arg_preco_final}')]    *=    ${arg_preco_final}




