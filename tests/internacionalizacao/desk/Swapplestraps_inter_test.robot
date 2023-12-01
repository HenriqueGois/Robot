*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale}    SwappableStraps

*** Variables ***
${locale}       en-US

*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    content
    
    &{DIC_STRAPSHEADER}    Get component to Dic, JSON    ${locale}    StrapstHeader
    Set Global Variable    ${DIC_STRAPSHEADER}
    
    &{DIC_QUALITY}    Get component to Dic, JSON    ${locale}    QualityStraps
    Set Global Variable    ${DIC_QUALITY}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: MyMoochiesAppHeader, AnyHelp

8.1-Validate content - Header
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//span[@id='HeaderTitle']/../..
    Log    Dicionário: ${DIC_STRAPSHEADER}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=HeaderTitle    ${DIC_STRAPSHEADER["headerTitle1"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=HeaderTitle    ${DIC_STRAPSHEADER["headerTitle2"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=HeaderSubTitle    ${DIC_STRAPSHEADER["headerSubtitle"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=StrapstHeaderParagraph01  ${DIC_STRAPSHEADER["Paragraph01"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=StrapstHeaderParagraph02    ${DIC_STRAPSHEADER["Paragraph02"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=StrapstHeaderParagraph03     ${DIC_STRAPSHEADER["Paragraph03"]}


8.1-Validate content - QualityStraps
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=(//section[@class='sc-1752502a-0 dVFDWD'])[2]
    Log    Dicionário: ${DIC_QUALITY}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    (//h2[contains(@class,'sc-ff717dba-5 fyTvSe')])[4]    ${DIC_QUALITY.card01.title}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    (//p[contains(@class,'sc-ff717dba-6 tBtgP')])[4]    ${DIC_QUALITY.card01.paragraph}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    (//h2[contains(@class,'sc-ff717dba-5 fyTvSe')])[5]    ${DIC_QUALITY.card02.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    (//p[contains(@class,'sc-ff717dba-6 tBtgP')])[5]  ${DIC_QUALITY.card02.paragraph}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    (//h2[contains(@class,'sc-ff717dba-5 fyTvSe')])[6]    ${DIC_QUALITY.card03.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    (//p[contains(@class,'sc-ff717dba-6 tBtgP')])[6]    ${DIC_QUALITY.card03.paragraph}

8.12-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - Disclaimer    ${locale}
    

