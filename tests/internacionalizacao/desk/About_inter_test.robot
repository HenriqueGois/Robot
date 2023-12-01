*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale}    About


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
    &{DIC_TEXT}    Get component to Dic, JSON    ${locale}    Texto
    Set Global Variable    ${DIC_TEXT}

    &{DIC_TEAM}    Get component to Dic, JSON    ${locale}    Team
    Set Global Variable    ${DIC_TEAM}
    
    ${DIC_TEAM["officeRachelText"]}      Replace String    ${DIC_TEAM["officeRachelText"]}    Ãª    ê
        Log To Console    ${DIC_TEAM["officeRachelText"]}
        Set To Dictionary	 ${DIC_TEAM}	    officeRachelText=${DIC_TEAM["officeRachelText"]}

    &{DIC_CORE}    Get component to Dic, JSON    ${locale}    Core
    Set Global Variable    ${DIC_CORE}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: Texto, Icones, Team

1-Validate content - FeaturesDesigned
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'AbooutTextTitle')]/../../../..
    Log    Dicionário: ${DIC_TEXT}
    Sleep    4s
    #Title Giving Them Freedom...
    Validate content, JSON    id=AbooutTextTitle    ${DIC_TEXT["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=AbooutTextParagraph1    ${DIC_TEXT["p1"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=AbooutTextParagraph2    ${DIC_TEXT["p2"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AbooutTextParagraph3    ${DIC_TEXT["p3"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AbooutTextParagraph4    ${DIC_TEXT["p4"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AbooutTextParagraph5    ${DIC_TEXT["p5"]}

2-Validate content - Icones
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Validate component - Icones    ${locale}

3-Validate content - Team
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Sleep    4s
    Search element    xpath=//h1[contains(@id,'TeamTitle')]/..
    Log    Dicionário: ${DIC_TEAM}
    Sleep    4s
    #Title Make Your Moochies Your Own
    Validate content, JSON    id=TeamTitle    ${DIC_TEAM["title"]}

3.1-Validate content - Team - ADRIAN
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameAdrian    Adrian
    #Link
    Validate content, JSON   id=TeamOfficeAdrian    ${DIC_TEAM["officeAdrian"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[9]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeAdrianText"]}
    #Text Every child is unique, with their own style, personality and tastes...

3.2-Validate content - Team - RYAN
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameRyan    Ryan
    #Link
    Validate content, JSON   id=TeamOfficeRyan    ${DIC_TEAM["officeRyan"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[10]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeRyanText"]}
    #Text Every child is unique, with their own style, personality and tastes...

3.3-Validate content - Team - MARCUS
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameMarcus    Marcus
    #Link
    Validate content, JSON   id=TeamOfficeMarcus    ${DIC_TEAM["officeMarcus"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[11]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeMarcusText"]}

3.4-Validate content - Team - KAUE
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameKaue    Kaue
    #Link
    Validate content, JSON   id=TeamOfficeKaue    ${DIC_TEAM["officeKaue"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[12]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeKaueText"]}

3.5-Validate content - Team - ANDREW
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameAndrew    Andrew
    #Link
    Validate content, JSON   id=TeamOfficeAndrew    ${DIC_TEAM["officeAndrew"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[13]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeAndrewText"]}
    #Text Every child is unique, with their own style, personality and tastes...

3.6-Validate content - Team - ZAINEB
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameZainab    Zainab
    #Link
    Validate content, JSON   id=TeamOfficeZainab    ${DIC_TEAM["officeZainab"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[14]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeZainabText"]}
    #Text Every child is unique, with their own style, personality and tastes...

3.7-Validate content - Team - LOUIS
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameLouis    Louis
    #Link
    Validate content, JSON   id=TeamOfficeLouis    ${DIC_TEAM["officeLouis"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[15]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeLouisText"]}

3.8-Validate content - Team - GRANT
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameGrant    Grant
    #Link
    Validate content, JSON   id=TeamOfficeGrant    ${DIC_TEAM["officeGrant"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[16]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeGrantText"]}

3.9-Validate content - Team - JOCK
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameJock    Jock
    #Link
    Sleep    2s
    Validate content, JSON   id=teamOfficeJock   ${DIC_TEAM["officeJock"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[17]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeJockText"]}
    #Text Every child is unique, with their own style, personality and tastes...

3.10-Validate content - Team - JULIANA
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameJuliana    Juliana
    #Link
    Sleep    1s
    Validate content, JSON   id=TeamofficeJuliana    ${DIC_TEAM["officeJuliana"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[18]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeJulianaText"]}
    #Text Every child is unique, with their own style, personality and tastes...

3.11-Validate content - Team - CORINE
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameCorine    Corine
    #Link
    Validate content, JSON   id=TeamOfficeCorine    ${DIC_TEAM["officeCorine"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[19]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeCorineText"]}

3.12-Validate content - Team - ALICE
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameAlice    Alice
    #Link
    Validate content, JSON   id=TeamOfficeAlice    ${DIC_TEAM["officeAlice"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[20]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeAliceText"]}

3.12-Validate content - Team - MICHELE
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameMichelle    Michelle
    #Link
    Validate content, JSON   id=TeamOfficeMichelle    ${DIC_TEAM["officeMichelle"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[21]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeMichelleText"]}

3.14-Validate content - Team - TAMMY
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameTammy    Tammy
    #Link
    Validate content, JSON   id=TeamOfficeTammy    ${DIC_TEAM["officeTammy"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[22]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeTammyText"]}
    #Text Every child is unique, with their own style, personality and tastes...

 3.15-Validate content - Team - JOY
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameJoy    Joy
    #Link
    Validate content, JSON   id=TeamOfficeJoy    ${DIC_TEAM["officeJoy"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[23]
    Sleep    1s

    #Link
    # Validate content, JSON    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]    ${DIC_TEAM["officeJoyText"]}
    #Text Every child is unique, with their own style, personality and tastes...

 3.16-Validate content - Team - PEDRO
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNamePedro    Pedro
    #Link
    Validate content, JSON   id=TeamOfficePedro    ${DIC_TEAM["officePedro"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[24]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officePedroText"]}

 3.17-Validate content - Team - RACHEL
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    xpath=//h2[contains(.,'Rachel')]    Rachel
    #Link

    Validate content, JSON   id=TeamOfficeRachel    ${DIC_TEAM["officeRachel"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[25]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeRachelText"]}

 3.18-Validate content - Team - MARGOT
    #Text Every child is unique, with their own style, personality and tastes...
    Sleep    4s
    Validate content, JSON    id=TeamNameMargot    Margot
    #Link
    Validate content, JSON   id=TeamOfficeMargot    ${DIC_TEAM["officeMargot"]}

    Sleep    1s
    Click    (//img[contains(@decoding,'async')])[26]
    Sleep    1s

    #Link
    Validate content, JSON
    ...    (//div[contains(@class,'sc-64e406d8-0 dmVlpI active')])[1]
    ...    ${DIC_TEAM["officeMargotText"]}

4-Validate content - Core
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Search element    xpath=(//h1[@id='CoreTitle'])[1]/../..
    Log    Dicionário: ${DIC_CORE}
    Sleep    4s
    #Title Make Your Moochies Your Own
    Validate content, JSON    id=CoreTitle    ${DIC_CORE["title"]}
    #Text Every child is unique, with their own style, personality and tastes...
    Validate content, JSON    id=CoreCard01Title    ${DIC_CORE.card01.title}
    #Link
    Validate content, JSON    id=CoreCard01Paragraph    ${DIC_CORE.card01.paragraph}
    #Link
    Validate content, JSON    id=CoreCard02Title    ${DIC_CORE.card02.title}
    #Text Every child is unique, with their own style, personality and tastes...
    Validate content, JSON    id=CoreCard02Paragraph    ${DIC_CORE.card02.paragraph}
    #Link
    Validate content, JSON    id=CoreCard03Title    ${DIC_CORE.card03.title}

    Validate content, JSON    id=CoreCard03Paragraph    ${DIC_CORE.card03.paragraph}

5-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
    [Tags]    content
    Validate component - Disclaimer        ${locale}

6-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale}


