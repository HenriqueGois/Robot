***Settings***
Documentation    Keywords to Home page.
Resource     ../../resources/base.robot

***Keywords***

Click on Shop Now, Home
    Wait For Elements State    xpath=(//div[contains(.,'Shop now')])[5]    visible    15 
    Click                      xpath=(//div[contains(.,'Shop now')])[5]

Click on Buy Now under table, Home
    Wait For Elements State    xpath=//button[@class='button moochies-effect']    visible    15 
    Click                      xpath=//button[@class='button moochies-effect']

