*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale}    Charity

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
    &{DIC_SOCIAL}    Get component to Dic, JSON    ${locale}    MoochiesForSocial
    Set Global Variable    ${DIC_SOCIAL}
    
    &{DIC_CHARATY}    Get component to Dic, JSON    ${locale}    CharityQuality
    Set Global Variable    ${DIC_CHARATY}
    
    &{DIC_PLASTIC}    Get component to Dic, JSON    ${locale}    Plastic
    Set Global Variable    ${DIC_PLASTIC}

    &{DIC_FEEDING}    Get component to Dic, JSON    ${locale}    Feeding
    Set Global Variable    ${DIC_FEEDING}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: MoochiesForSocial, CharityQuality


1-Validate content - MoochiesForSocial
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'ForSocialTitle')]/../..
    Log    Dicionário: ${DIC_SOCIAL}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=ForSocialTitle    ${DIC_SOCIAL["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=ForSocialParagraph1    ${DIC_SOCIAL["p1"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=ForSocialParagraph2    ${DIC_SOCIAL["p2"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=ForSocialParagraph3   ${DIC_SOCIAL["p3"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=ForSocialParagraph4   ${DIC_SOCIAL["p4"]}


2-Validate content - CharityQuality
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h3[contains(@id,'OverTitle')]/../../..
    Log    Dicionário: ${DIC_CHARATY}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=OverTitle    ${DIC_CHARATY.card01.returnTitle}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=OverParagraph    ${DIC_CHARATY.card01.returnText}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=CertifiedTitle   ${DIC_CHARATY.card02.returnTitle}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=CertifiedParagraph   ${DIC_CHARATY.card02.returnText}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=GrowTitle   ${DIC_CHARATY.card03.returnTitle}
     #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=GrowParagraph   ${DIC_CHARATY.card03.returnText}

3-Validate content - Plastic
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'PlasticTitle')]/..
    Log    Dicionário: ${DIC_PLASTIC}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=PlasticTitle    ${DIC_PLASTIC["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=PlasticParagraph1    ${DIC_PLASTIC["paragraph_1"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=PlasticParagraph2    ${DIC_PLASTIC["paragraph_2"]}

3-Validate content - Feeding
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'PlasticTitle')]/..
    Log    Dicionário: ${DIC_FEEDING}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=FeedingTitle    ${DIC_FEEDING["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=FeedingParagraph1    ${DIC_FEEDING["paragraph_1"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=FeedingParagraph2    ${DIC_FEEDING["paragraph_2"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=FeedingLink    ${DIC_FEEDING["link"]}