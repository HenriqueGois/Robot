*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale_US}    Shop

*** Variables ***
${locale_US}       en-US


*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    [Tags]    content
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    &{DIC_BESTBUY}    Get component to Dic, JSON    ${locale_US}    BestBuy
    Set Global Variable    ${DIC_BESTBUY}
    
    &{DIC_SYNCHEADER}    Get component to Dic, JSON    ${locale_US}    SyncHeader
    Set Global Variable    ${DIC_SYNCHEADER}
    
    
    Set Test Message    Locale informado: ${locale_US}. Dicionários criados: BestBuy

8.1-Validate content - Header
    [Documentation]    Validação do Texto presente no elemento Header - Content HomePage
    [Tags]    content
    Validate component - Header    ${locale_US}
    #Title YOUR KID'S FIRST
    Validate content, JSON    id=PriceTagText    ${DIC_SYNCHEADER["text"]}
    #Title MOBILE PHONE
    Validate content, JSON    id=PriceTagValue    ${DIC_SYNCHEADER["price"]}
    #Title YOUR KID'S FIRST
    Validate content, JSON    id=TextLeft    ${DIC_SYNCHEADER["textLeft"]}
    #Title MOBILE PHONE
    Validate content, JSON    id=TextRight    ${DIC_SYNCHEADER["textRight"]}

8.1-Validate content - BestBuy
    [Documentation]    Validação do Texto presente no elemento Header - Content HomePage
    [Tags]    content
    Search element    xpath=//h1[@id='bestBuyTitle']/../..
    Log    Dicionário: ${DIC_BESTBUY}
    Sleep    2s
    #Title YOUR KID'S FIRST
    Validate content, JSON    id=bestBuyTitle    ${DIC_BESTBUY["bestTitle"]}
    #Title MOBILE PHONE
    Validate content, JSON    id=bestBuySubTitle    ${DIC_BESTBUY["bestSubTitle"]}
    #Title GIVING PARENTS PEACE OF MIND
    Validate content, JSON    id=bestBuyText    ${DIC_BESTBUY["bestText"]}
    #Title MOBILE PHONE
    Validate content, JSON    id=bestBuyBtnLeft    ${DIC_BESTBUY["bestBtnLeft"]}
    #Title GIVING PARENTS PEACE OF MIND
    Validate content, JSON    id=bestBuyBtnRight    ${DIC_BESTBUY["bestBtnRight"]}

2-Validate content - AllInOne
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Validate component - AllInOne    ${locale_US}

12-Validate content - NoLockIn
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - NoLockIn    ${locale_US}

12-Validate content - WhyChooseMoochies
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - WhyChooseMoochies    ${locale_US}

8.10-Validate content - MakeYourMoochies
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Validate component - MakeYourMoochies    ${locale_US}

6-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale_US}