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
    New Page    https://kids-website-homolog.vercel.app/${locale}/Unboxing
    Sleep    2s

*** Variables ***
${locale}       en-AU

*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    content
    &{DIC_OPENING}    Get component to Dic, JSON    ${locale}    OpenYourMoochies
    Set Global Variable    ${DIC_OPENING}
    
    Set Test Message    Locale informado: ${locale}. Dicionários criados: OpenYourMoochies

8.1-Validate content - GiveThemFreedom
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'OpenYourMoochiesTitle_Mobile')]/..
    Log    Dicionário: ${DIC_OPENING}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=OpenYourMoochiesTitle_Mobile    ${DIC_OPENING["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=MoreThanTitle    ${DIC_OPENING.card01.returnTitle}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=MoreThanParagraph    ${DIC_OPENING.card01.returnText}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=WhatsInTitle   ${DIC_OPENING.card02.returnTitle}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=WhatsInParagraph    ${DIC_OPENING.card02.returnText}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MoreInTitle      ${DIC_OPENING.card03.returnTitle}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MoreInParagraph   ${DIC_OPENING.card03.returnText}

