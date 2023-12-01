*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Test Setup          Accsses

*** Keywords ***
Accsses
        Timeout 20s
    New Browser    webkit    false
    ${device}    Get Device    iPhone 13
    New Context    &{device}
    New Page    https://kids-website-homolog.vercel.app/${locale}/MyMoochiesApp
    Sleep    2s


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
    
    &{DIC_MOOCHIESAPPHEADER}    Get component to Dic, JSON    ${locale}    MyMoochiesAppHeader
    Set Global Variable    ${DIC_MOOCHIESAPPHEADER}
    
    &{DIC_ANYHELP}    Get component to Dic, JSON    ${locale}    AnyHelp
    Set Global Variable    ${DIC_ANYHELP}
    
    Set Test Message    Locale informado: ${locale}. Dicionários criados: MyMoochiesAppHeader, AnyHelp

8.1-Validate content - Header
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//span[@id='HeaderTitle']/../..
    Log    Dicionário: ${DIC_MOOCHIESAPPHEADER}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=HeaderTitle    ${DIC_MOOCHIESAPPHEADER["headerTitle1"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=HeaderTitle    ${DIC_MOOCHIESAPPHEADER["headerTitle2"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=HeaderSubTitle    ${DIC_MOOCHIESAPPHEADER["headerSubtitle"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MyMoochiesAppHeadertextTitle1  ${DIC_MOOCHIESAPPHEADER["txtTitle"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MyMoochiesAppHeadertext1    ${DIC_MOOCHIESAPPHEADER["text"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MyMoochiesAppHeadertextApTitle1     ${DIC_MOOCHIESAPPHEADER["appTitle1"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MyMoochiesAppHeadertextAppTitle2   ${DIC_MOOCHIESAPPHEADER["appTitle2"]}

8.1-Validate content - AnyHelp
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h1[@id='InTheBoxTitle_Desktop']/../..
    Log    Dicionário: ${DIC_ANYHELP}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=InTheBoxTitle_Desktop    ${DIC_ANYHELP["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=green    ${DIC_ANYHELP.card01.textTop}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=green    ${DIC_ANYHELP.card01.textBottom}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=blue  ${DIC_ANYHELP.card02.textTop}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=blue    ${DIC_ANYHELP.card02.textBottom}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=purple     ${DIC_ANYHELP.card03.textTop}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=purple   ${DIC_ANYHELP.card03.textBottom}
     #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=orange   ${DIC_ANYHELP.card04.textTop}
     #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=orange   ${DIC_ANYHELP.card04.textBottom}
