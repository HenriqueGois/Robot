*** Settings ***
Documentation       Testes de validação Internacionalização

Resource            ../../../resources/base.robot
Resource            ../components_base.robot

Test Setup          Accsses    ${locale}    Checkout/Information


*** Variables ***
${locale}       en-US


*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    [Tags]    content
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.

    &{DIC_INFOTMATION}    Get component to Dic, JSON    ${locale}    Information
    Set Global Variable    ${DIC_INFOTMATION}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: MyMoochiesAppHeader, AnyHelp

8.1-Validate content - Header
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//div[contains(@class,'sc-f277980c-4 bgRzOX')]
    Log    Dicionário: ${DIC_INFOTMATION}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=ContactInfo    ${DIC_INFOTMATION["contactInfo"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content placeholder, JSON    id=FormEmail    ${DIC_INFOTMATION["emailPlaceholder"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=FormEmailOffer    ${DIC_INFOTMATION["emailOffers"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content placeholder, JSON    id=FormFirstName    ${DIC_INFOTMATION["firstNamePlaceholder"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content placeholder, JSON    id=FormLastName    ${DIC_INFOTMATION["lastNamePlaceholder"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content placeholder, JSON    id=FormPhoneNumber    ${DIC_INFOTMATION["phonePlaceholder"]}
    #Title Giving Them Freedom...
    Validate content, JSON    id=ShippingAddress    ${DIC_INFOTMATION["shippingAddress"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content placeholder, JSON    id=PostCode    ${DIC_INFOTMATION["shippingAddressPlaceholder"]}
    
    Fill Text    id=FormEmail   automatic.test_QA@moochies.com
    Fill Text    id=FormFirstName    Henrique
    Fill Text    id=FormLastName    Gois
    Fill Text    id=FormPhoneNumber    5511953964500
    Fill Text    id=PostCode    As
    Click    //input[contains(@type,'submit')]

    Sleep    3s

    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=SelectAddress    ${DIC_INFOTMATION["selectAddress"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    xpath=//select[contains(@name,'fullAddress')]    ${DIC_INFOTMATION["pleaseSelect"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content placeholder, JSON    xpath=//input[@name='adtionalAddressInfo']   ${DIC_INFOTMATION["aditionalAddressInfoPlaceholder"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    //input[contains(@type,'submit')]    ${DIC_INFOTMATION["continueBtn"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    //div[contains(@class,'sc-a5b087c1-10 CVNwV')]    ${DIC_INFOTMATION["backBtn"]}
