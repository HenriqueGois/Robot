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
    New Page    https://kids-website-homolog.vercel.app/${locale}/WhyMoochies
    Sleep    2s

Validate RN
    [Arguments]    ${link_RN}
    Set Log Level    RN-Validate
    Log         RN-Validate    Validate RN - ${link_RN}

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
    &{DIC_GIVING}    Get component to Dic, JSON    ${locale}    GiveThemFreedom
    Set Global Variable    ${DIC_GIVING}
    
    &{DIC_YOURCHILD}    Get component to Dic, JSON    ${locale}    YourChildDataSafe
    Set Global Variable    ${DIC_YOURCHILD}

    &{DIC_OURCOMMITMENT}    Get component to Dic, JSON    ${locale}    OurCommitment
    Set Global Variable    ${DIC_OURCOMMITMENT}
    
    Set Test Message    Locale informado: ${locale}. Dicionários criados: GiveThemFreedom, Disclaimer, YourChildDataSafe, OurCommitment, FeaturesCarousel, NoLockIn, MakeYourMoochies, Icones

1.5-Vlidação Content - Carrocel
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - Carrocel    ${locale}

1.1-Validate content - GiveThemFreedom
    [Documentation]    Validação do Texto presente no elemento GiveThemFreedom - Content WhyMoochies Page
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'GiveFreedomTitle')]/..
    Log    Dicionário: ${DIC_GIVING}
    Sleep    2s
    #Title Giving Them Freedom...
    Validate content, JSON    id=GiveFreedomTitle         ${DIC_GIVING["title"]}
    #Paragraph Moochies is on a mission to keep...
    Validate content, JSON    id=GiveFreedomParagraph1    ${DIC_GIVING["p1"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=GiveFreedomParagraph2    ${DIC_GIVING["p2"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=GiveFreedomParagraph3    ${DIC_GIVING["p3"]}

1.2-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content WhyMoochies Page
    [Tags]    content
    Validate component - Disclaimer    ${locale}

1.3-Validate content - YourChildDataSafe
    [Documentation]    Validação do Texto presente no elemento Stay in Touch - Content HomePage
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'DataSafeTitle')]/../../..
    Log    Dicionário: ${DIC_YOURCHILD}
    Sleep    2s
    # "title": "Your Child's Data is Safe with Us"
    Validate content, JSON    id=DataSafeTitle   ${DIC_YOURCHILD["title"]}
    # "p1":"Your child’s security is
    Validate content, JSON    id=DataSafeParagraph1    ${DIC_YOURCHILD["p1"]}
    # "p2":"Not only does Moochies comply
    Validate content, JSON    id=DataSafeParagraph2    ${DIC_YOURCHILD["p2"]}
    # "p3":"So it’s safe to say that all your
    Validate content, JSON    id=DataSafeParagraph3   ${DIC_YOURCHILD["p3"]}

1.4-Validate content - OurCommitment
    [Documentation]    Validação do Texto presente no elemento Stay in Touch - Content HomePage
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'OurCommitmentTitle')]/../..
    Log    Dicionário: ${DIC_OURCOMMITMENT}
    Sleep    2s
    #Title Stay in Touch with Your Child!
    Validate content, JSON    id=OurCommitmentTitle         ${DIC_OURCOMMITMENT["title"]}
    #Title Anytime. Anywhere.
    Validate content, JSON    id=OurCommitmentParagraph1    ${DIC_OURCOMMITMENT["paragraph_1"]}
    #Title GIVING PARENTS PEACE OF MIND
    Validate content, JSON    id=OurCommitmentParagraph2    ${DIC_OURCOMMITMENT["paragraph_2"]}
 
1.6-Validate content - NoLockIn
    [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
    [Tags]    content
    Validate component - NoLockIn    ${locale}

1.7-Validate content - MakeYourMoochies
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Validate component - MakeYourMoochies    ${locale}

1.1-Validate content - Icones
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Validate component - Icones    ${locale}

1.13-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale}

