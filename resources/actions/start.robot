***Settings***
Documentation    Actions to start tests.
Resource     ../../resources/base.robot

***Variables***
${url_sandbox}    https://sandbox.moochies.com/
${url_prod}       https://sandbox.moochies.com/

***Keywords***
Access Sandbox
    [Arguments]                ${context_url}
    New Browser                chromium                        false 
    New Page                   ${url_sandbox}${context_url}
    Wait For Elements State    id=c-p-bn                       visible    30
    Click                      id=c-p-bn

Access PRD
    [Arguments]                ${context_url}
    New Browser                chromium                        false 
    New Page                   ${url_sandbox}${context_url}
    Wait For Elements State    id=c-p-bn                       visible    30
    Click                      id=c-p-bn

Access Mobile
    [Arguments]    ${context_url}
    New Browser    chromium                        false 
    ${device}=     Get Device                      iPad Mini Landcaspe
    New Context    &{device}
    New Page       ${url_sandbox}${context_url}

Close PopUp Change Country. Any
    Wait For Elements State    xpath=//img[@src='/Images/cancel_white.svg']/../..    visible    30
    Click                      xpath=//img[@src='/Images/cancel_white.svg']/../..

Validate page, Any
    Wait For Elements State    id=logo                                                            visible     30
    Get Element States         id=logo                                                            validate    value | visible
    Get Text                   xpath=//h2[@class='mb-5 fs-2'][contains(.,'STAY IN THE LOOP?')]    ==          STAY IN THE LOOP? 

Timeout 20s
    Set Browser Timeout    20s

Validate RN
    [Arguments]    ${RN-ID_agr}
    Log     Validate RN${RN-ID_agr} - Link RN's dock "https://moochies.sharepoint.com/:x:/s/Produtos/ET2EdqW_h-1In1TVgSS9MkUB8QDLa8OKOdo2yCAeh_Q8dg?e=C24MFK"    level=WARN      html=yes 

