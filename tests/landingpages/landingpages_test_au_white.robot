**Settings***

Documentation   Testes de validação as Lading pages 

Resource    ../../resources/base_desk.robot

***Variables***
${arg_watch_model}      Connect
${arg_watch_color}      White
${arg_price}            AUS$179.95

***Test Cases***

Connect${arg_watch_color}
    [Tags]               smoke
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_BlueGeo')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    # Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart    1
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout
    Fill Contact Details, Checkout

    Sleep       2s

    Fill Postcode, Checkout     GL7 3NW
    
     Sleep       2s

    Click on Lookup, Checkout

    Sleep       1s
    
    Select Postcode, Checkout
    
    Sleep       1s
    
    Click on Proceed Payment, Checkout
    
    Sleep       2s

    Validate page, Payment
    Validate Watche, Payment    ${arg_watch_model}     ${arg_watch_color}
    
    Take Screenshot
    
    Click on Visa/Martercard, Payment
    
    Sleep       2s
    
    Validate field card, Payment
    Take Screenshot


Connect${arg_watch_color}BlueGeometric
    [Tags]               smoke
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}BlueGeometric
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     BlueGeo

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_BlueGeo')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  BlueGeo
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout
    Fill Contact Details, Checkout

    Sleep       2s

    Fill Postcode, Checkout     GL7 3NW
    
    Sleep       2s

    Click on Lookup, Checkout

    Sleep       1s
    
    Select Postcode, Checkout
    
    Sleep       1s
    
    Click on Proceed Payment, Checkout
    
    Sleep       2s

    Validate page, Payment
    Validate Watche, Payment    ${arg_watch_model}     ${arg_watch_color}
    Validate Strap, Payment       BlueGeo
    
    Take Screenshot
    
    Click on Visa/Martercard, Payment
    
    Sleep       2s
    
    Validate field card, Payment
    
Connect${arg_watch_color}CurlingCobra
   
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}CurlingCobra
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Snake

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Snake')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Snake
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s

Connect${arg_watch_color}Cat
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}CuteCats
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Cat

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Cat')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Cat
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s

Connect${arg_watch_color}DinoBand
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}DinoBand
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Dino

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Dino')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Dino
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s

Connect${arg_watch_color}DonutWorry
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}DonutWorry
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Donut

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Donut')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Donut
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s


Connect${arg_watch_color}Graffiti
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}Graffiti
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Graffiti

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Graffiti')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Graffiti
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s

Connect${arg_watch_color}Love
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}Love
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Love

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Love')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Love
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s

Connect${arg_watch_color}Monster
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}Monster
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     Monster

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_Monster')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  Monster
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s

Connect${arg_watch_color}PinkGeometric
 
    Timeout 20s
    Access Landingpage     AU/Connect${arg_watch_color}PinkGeometric
    
    Sleep       15s
    
    Validate page, Any
    Validate Model, LandingPage  ${arg_watch_model}
    Validate Especial Offer, LandingPage
    Validate Price, LandingPage  ${arg_price}
    Validate watch Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}
    Validate strap Color, LandingPage  ${arg_watch_model}  ${arg_watch_color}     PinkGeometric

    Get Element States      xpath=(//img[contains(@src,'./landingpages/assets/connect_screenprotector_black_PinkGeometric')])     validate    value | visible

    Sleep     10s

    Click on Buy Now, LandingPage

    Sleep     10s

    Click   xpath=//button[contains(@class,'ajs-close')]
    
    Sleep       2s

    Validate total products in Cart, Cart  2
    Validate products in Cart, Cart  ${arg_watch_model}  ${arg_watch_color}
    Validate products in Cart, Cart  Straps  PinkGeometric
    Take Screenshot

    Sleep       2s

    Click on Proceed to Checkout, Cart
    Validate page, Checkout

    Sleep       2s