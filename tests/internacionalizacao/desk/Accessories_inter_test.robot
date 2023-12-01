*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale}    Accessories

*** Variables ***
${locale}       en-GB

*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    [Tags]    content
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    &{DIC_HEADERACCESSOIRE}    Get component to Dic, JSON    ${locale}    AccessoriesHeader
    Set Global Variable    ${DIC_HEADERACCESSOIRE}
    
    &{DIC_FORYOU}    Get component to Dic, JSON    ${locale}    ForYourPhoneWatch
    Set Global Variable    ${DIC_FORYOU}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: Texto, Icones, Team

1-Validate content - AccessoriesHeader
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=//section[@id='Header']
    Log    Dicionário: ${DIC_HEADERACCESSOIRE}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=HeaderTitle    ${DIC_HEADERACCESSOIRE["headerTitle1"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=HeaderTitle    ${DIC_HEADERACCESSOIRE["headerTitle2"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=HeaderSubTitle    ${DIC_HEADERACCESSOIRE["headerSubtitle"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AccessoriesHeaderParagraph01    ${DIC_HEADERACCESSOIRE["Paragraph01"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AccessoriesHeaderParagraph02    ${DIC_HEADERACCESSOIRE["Paragraph02"]}

1-Validate content - ForYourPhoneWatch
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=(//h1[@id='CoreTitle'])[2]/..
    Log    Dicionário: ${DIC_FORYOU}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    xpath=(//h1[@id='CoreTitle'])[2]    ${DIC_FORYOU["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=ForYourPhoneWatchCard01Title    ${DIC_FORYOU.card01.title}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=ForYourPhoneWatchCard01Paragraph    ${DIC_FORYOU.card01.paragraph}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=ForYourPhoneWatchCard02Title    ${DIC_FORYOU.card02.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=ForYourPhoneWatchCard02Paragraph    ${DIC_FORYOU.card02.paragraph}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=ForYourPhoneWatchCard03Title    ${DIC_FORYOU.card03.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=ForYourPhoneWatchCard03Paragraph    ${DIC_FORYOU.card03.paragraph}

5-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
    [Tags]    content
    Validate component - Disclaimer        ${locale}

6-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale}


