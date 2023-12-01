*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses

*** Keywords ***
Accsses
    Timeout 20s
    New Browser    webkit    false
    ${device}    Get Device    iPhone 13
    New Context    &{device}
    New Page    https://kids-website-homolog.vercel.app/${locale}/PhoneWatches
    Sleep    2s


*** Variables ***
${locale}       en-GB

*** Test Cases ***
0.1.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    content
    &{DIC_DESIGNED}    Get component to Dic, JSON    ${locale}    FeaturesDesigned
    Set Global Variable    ${DIC_DESIGNED}

    &{DIC_MOREABOUT}    Get component to Dic, JSON    ${locale}    MoreAbout
    Set Global Variable    ${DIC_MOREABOUT}

    Set Global Variable    ${DIC_DISCLAIMER}
    
    Set Test Message    Locale informado: ${locale}. Dicionários criados: FeaturesDesigned

.1-Vlidação Content - Carrocel
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - Carrocel    ${locale}

2-Validate content - FeaturesDesigned
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'FeaturesTitle_mobile')]/../../..
    Log    Dicionário: ${DIC_DESIGNED}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=FeaturesTitle_mobile    ${DIC_DESIGNED["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=greatForKidsTitle_mobile    ${DIC_DESIGNED.card01.title}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=greatForKidsParagraph_mobile    ${DIC_DESIGNED.card01.paragraph}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MonthWarrantyTitle_mobile  ${DIC_DESIGNED.card02.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=MonthWarrantyParagraph_mobile  ${DIC_DESIGNED.card02.paragraph}

3-Validate content - FeaturesAnimation
    [Documentation]    Validação do Texto presente no elemento Features Animation - Content HomePage
    [Tags]    content
    Validate component - FeaturesAnimation    ${locale}
4-Validate content - MakeYourMoochies
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
     Validate component - MakeYourMoochies    ${locale}

5-Validate content - MoreAbout
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'moreAboutTitle_mobile')]/..
    Log    Dicionário: ${DIC_MOREABOUT}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=moreAboutTitle_mobile    ${DIC_MOREABOUT["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=NoSocialTitle    ${DIC_MOREABOUT.card01.title}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=NoSocialParagraph    ${DIC_MOREABOUT.card01.paragraph}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=PlastiNeutralTitle  ${DIC_MOREABOUT.card02.title}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=PlastiNeutralParagraph  ${DIC_MOREABOUT.card02.paragraph}

6-Validate content - DontLetTheRain
    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage
    [Tags]    content
    Validate component - DontLetTheRain    ${locale}

7-Validate content - Disclaimer
   [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
   [Tags]    content
    Validate component - Disclaimer    ${locale}
