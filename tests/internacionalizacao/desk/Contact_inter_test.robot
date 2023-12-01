*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale}    Contact?contact

*** Variables ***
${locale}       nl-NL

*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    content
    
    &{DIC_CONTACTHEADER}    Get component to Dic, JSON    ${locale}    ContactHeader
    Set Global Variable    ${DIC_CONTACTHEADER}
    
    &{DIC_SUPORT}    Get component to Dic, JSON    ${locale}    ContactSuport
    Set Global Variable    ${DIC_SUPORT}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: ContactSuport, ContactHeader


1-Validate content - ContactHeader
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=//span[contains(@id,'HeaderTitle')]/..
    Log    Dicionário: ${DIC_CONTACTHEADER}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=HeaderTitle    ${DIC_CONTACTHEADER["headerTitle1"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=HeaderTitle    ${DIC_CONTACTHEADER["headerTitle2"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=HeaderSubTitle    ${DIC_CONTACTHEADER["headerSubtitle"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=GetInTouchTitle  ${DIC_CONTACTHEADER["title"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=GetInTouchSubtitle   ${DIC_CONTACTHEADER["Paragraph"]}


2-Validate content - ContactSuport
    [Documentation]    Validação do Texto presente no elemento ContactSuport -  Content ContactUs Page
    [Tags]    content
    Search element    xpath=//div[contains(@class,'sc-c05dc513-4 btypsK')]/../..
    Log    Dicionário: ${DIC_SUPORT}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=ContactTitle        ${DIC_SUPORT.card01.title}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=ContactParagraph    ${DIC_SUPORT.card01.paragraph}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=ContactBtn          ${DIC_SUPORT.card01.button}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MailTitle           ${DIC_SUPORT.card02.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MailParagraph       ${DIC_SUPORT.card02.paragraph}
     #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MailBtn             ${DIC_SUPORT.card02.button}
    #Title Giving Them Freedom...
    Validate content, JSON    id=OfficeTitle         ${DIC_SUPORT.card03.title}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=OfficeParagraph     ${DIC_SUPORT.card03.paragraph}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=OfficeBtn           ${DIC_SUPORT.card03.button}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=FaqTitle            ${DIC_SUPORT.card04.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=FaqParagraph        ${DIC_SUPORT.card04.paragraph}
     #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=FaqBtn              ${DIC_SUPORT.card04.button}

