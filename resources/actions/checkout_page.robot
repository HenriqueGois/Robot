***Settings***
Documentation    Keywords to page.
Resource     ../../resources/base.robot

***Keywords***
Validate page, Checkout
    Wait For Elements State    xpath=//h1[contains(.,'Checkout')]    visible     15                 
    Get Element States         xpath=//h1[contains(.,'Checkout')]    validate    value | visible
    Get Text                   xpath=//h1[contains(.,'Checkout')]    *=          Checkout


Fill Contact Details, Checkout
    Wait For Elements State    xpath=//h2[contains(.,'Contact Details')]       visible              15
    Fill Text                  xpath=//input[contains(@name,'txtForename')]    TesteQA_FIRSTNAME
    Fill Text                  xpath=//input[contains(@name,'txtSurname')]     TesteQA_SURNAME      
    Fill Text                  xpath=//input[contains(@name,'txtCompany')]     TesteQA_COMPANY
    Fill Text                  xpath=//input[contains(@name,'txtPhone')]       1234567890
    Fill Text                  xpath=//input[contains(@name,'txtEmail')]       TesteQA@teste.com

Fill Postcode, Checkout
    [Arguments]                ${postcode}                               
    Wait For Elements State    xpath=//input[@id='txtPostcodeLookup']    visible        15
    Fill Text                  xpath=//input[@id='txtPostcodeLookup']    ${postcode}    

Click on Lookup, Checkout
    Wait For Elements State    xpath=(//input[contains(@type,'button')])[1]    visible    15    
    Click                      xpath=(//input[contains(@type,'button')])[1]

Select Postcode, Checkout
    Wait For Elements State    xpath=//select[contains(@name,'ctl00$MainContent$lstAddress')]    visible      15 
    Click                      xpath=//select[contains(@name,'ctl00$MainContent$lstAddress')]
    Keyboard Key               press                                                             ArrowDown
    Sleep                      2s
    Keyboard Key               press                                                             Enter

Click on Proceed Payment, Checkout
    Wait For Elements State    xpath=//input[contains(@name,'btnPay')]    visible    15 
    Click                      xpath=//input[contains(@name,'btnPay')]     

