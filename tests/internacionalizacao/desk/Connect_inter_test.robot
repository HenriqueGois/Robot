*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale}    MoochiesConnect


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
    &{DIC_CONNECTTEXT}    Get component to Dic, JSON    ${locale}    Connect
    Set Global Variable    ${DIC_CONNECTTEXT}
       
    &{DIC_TABLE}    Get component to Dic, JSON    ${locale}    FeaturesTable
    Set Global Variable    ${DIC_TABLE}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: Connect, AllInOne, WhyChooseMoochies, InTheBox

8.1-Vlidação Content - Carrocel
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - Carrocel    ${locale}

1-Validate content - Connect
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Search element    xpath=//div[contains(@id,'PriceTagText')]/../../..
    Log    Dicionário: ${DIC_CONNECTTEXT}
    Sleep    2s
    IF    "${locale}" == "en-US"
        Validate RN    06-US
        Validate content, JSON    id=commingSoon    Comming Soon!
    ELSE
    #Title Giving Them Freedom...
    Validate content, JSON    id=PriceTagText    ${DIC_CONNECTTEXT["text"]}
    #Paragraph Moochies is on a mission to keep...
    # Validate content, JSON    id=PriceTagValue    ${DIC_CONNECTTEXT["price"]}
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=TextLeft    ${DIC_CONNECTTEXT["textLeft"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=TextRight  ${DIC_CONNECTTEXT["textRight"]}   
    END

2-Validate content - AllInOne
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Validate component - AllInOne    ${locale}

8.6-Validate content - DontLetTheRain
    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage
    [Tags]    content
    Validate component - DontLetTheRain    ${locale}

11-Validate content - MakeYourMoochies
   [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
   [Tags]    content
    Validate component - MakeYourMoochies    ${locale}

8.9-Validate content - LearnMore
    [Documentation]    Validação do Texto presente no elemento Learn More About Moochies PhoneWatch - Content HomePage
    [Tags]    content
    IF    "${locale}" == "en-US"
        Validate RN    07-US
        Search element    xpath=//h2[contains(@id,'TableTitle')]/..
        Log    Dicionário: ${DIC_TABLE}
        Sleep    2s
        #Title Learn More About Moochies PhoneWatch
        Validate content, JSON    id=TableTitle    ${DIC_TABLE["title"]}
        #Title Price
        Validate content, JSON    id=PriceTagText    ${DIC_TABLE["priceText"]}
        #Title Value
        # Validate content, JSON    id=PriceTagValue    ${DIC_TABLE["priceValue"]}
        #Title Table
        Validate content, JSON    id=TableHeaderFeatures    ${DIC_TABLE["tableHeaderTitle"]}
        #Title Table
        Validate content, JSON    id=table-model    ${DIC_TABLE["tableHeaderData"]}
        #Content Table
        Validate content, JSON    id=TableDataKey_0    ${DIC_TABLE.tableData[0].dataTitle}
        Validate content, JSON    id=TableDataKey_1    ${DIC_TABLE.tableData[1].dataTitle}
        Validate content, JSON    id=TableDataKey_2    ${DIC_TABLE.tableData[2].dataTitle}
        Validate content, JSON    id=TableDataKey_3    ${DIC_TABLE.tableData[3].dataTitle}
        Validate content, JSON    id=TableDataKey_4    ${DIC_TABLE.tableData[4].dataTitle}
        Validate content, JSON    id=TableDataKey_5    ${DIC_TABLE.tableData[5].dataTitle}
        Validate content, JSON    id=TableDataKey_6    ${DIC_TABLE.tableData[6].dataTitle}
        Validate content, JSON    id=TableDataKey_7    ${DIC_TABLE.tableData[7].dataTitle}
        Validate content, JSON    id=TableDataKey_8    ${DIC_TABLE.tableData[8].dataTitle}
        Validate content, JSON    id=TableDataKey_9    ${DIC_TABLE.tableData[9].dataTitle}
        Validate content, JSON    id=TableDataKey_10    ${DIC_TABLE.tableData[10].dataTitle}
        Validate content, JSON    id=TableDataKey_11    ${DIC_TABLE.tableData[11].dataTitle}
        Validate content, JSON    id=TableDataKey_12    ${DIC_TABLE.tableData[12].dataTitle}
    
    ELSE

    Get Element States    xpath=//h2[contains(@id,'TableTitle')]/..    ==       detached
    
    END 
12-Validate content - NoLockIn
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - NoLockIn    ${locale}

12-Validate content - WhyChooseMoochies
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - WhyChooseMoochies    ${locale}

5-Validate content - InTheBox
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
    [Tags]    content
    Validate component - InTheBox    ${locale}    Connect

5-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
    [Tags]    content
    Validate component - Disclaimer    ${locale}

6-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale}


