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
    New Page    https://kids-website-homolog.vercel.app/${locale}/MoochiesConnect
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
    &{DIC_CONNECTTEXT}    Get component to Dic, JSON    ${locale}    Connect
    Set Global Variable    ${DIC_CONNECTTEXT}
    
    &{DIC_ALLINONE}    Get component to Dic, JSON    ${locale}    AllInOne
    Set Global Variable    ${DIC_ALLINONE}
    
    &{DIC_DONTLET}    Get component to Dic, JSON    ${locale}    DontLetTheRain
    Set Global Variable    ${DIC_DONTLET}

    &{DIC_WHYCHOOSE}    Get component to Dic, JSON    ${locale}    WhyChooseMoochies
    Set Global Variable    ${DIC_WHYCHOOSE}

    &{DIC_INTHEBOX}    Get component to Dic, JSON    ${locale}    InTheBox
    Set Global Variable    ${DIC_INTHEBOX}
    
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
    Search element    xpath=//h1[contains(@id,'AllInOneTitle')]/../../../..
    Log    Dicionário: ${DIC_ALLINONE}
    Sleep    2s
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=AllInOneTitle    ${DIC_ALLINONE["title"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AllInOneParagraph1  ${DIC_ALLINONE["paragraph_1"]}  
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AllInOneParagraph2  ${DIC_ALLINONE["paragraph_2"]}  

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
   Search element    xpath=//h1[contains(@id,'WhyChooseMoochiesTitle_mobile')]/../..
   Log    Dicionário: ${DIC_WHYCHOOSE}
   Sleep    2s
   #Title No Lock-In Contract SIM Plans
   Validate content, JSON    id=WhyChooseMoochiesTitle_mobile    ${DIC_WHYCHOOSE["title"]}
   #Text No lock-in contracts, no hidden fees, ever! That's our promise to you....
   Validate content, JSON    id=CommentsParagraph    ${DIC_WHYCHOOSE.card01.paragraph}
   #text Paid monthly, you can cancel or change your plan at any time ......
   Validate content, JSON    id=MoochiesParagraph    ${DIC_WHYCHOOSE.card02.paragraph}
   #link
   Validate content, JSON    id=MonthWarrantyParagraph    ${DIC_WHYCHOOSE.card03.paragraph}
   #link
   Validate content, JSON    id=LiveCustomerSupportParagraph   ${DIC_WHYCHOOSE.card04.paragraph}

5-Validate content - InTheBox
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
    [Tags]    content
    Search element    xpath=//h1[contains(@id,'InTheBoxTitle_Mobile')]/../..
    Log    Dicionário: ${DIC_INTHEBOX}
    Sleep    2s
    #Title 30 Days Return
    Validate content, JSON    id=InTheBoxTitle_Mobile    ${DIC_INTHEBOX["title"]}
    #Text Changed your mind? You can return your
    Validate content, JSON    id=connect    ${DIC_INTHEBOX.card01.textTop}
    #Title 12-Month Fault Warranty
    Validate content, JSON    id=connect    ${DIC_INTHEBOX.card01.textBottom}
    #Text If your Moochies develops a hardware or
    Validate content, JSON    id=standard    ${DIC_INTHEBOX.card02.textTop}
    #Title 24/7 Live Online Support
    Validate content, JSON    id=standard       ${DIC_INTHEBOX.card02.textBottom}
        #Title 24/7 Live Online Support
    Validate content, JSON    id=manual    ${DIC_INTHEBOX.card03.textTop}
    #Title 12-Month Fault Warranty
    Validate content, JSON    id=manual    ${DIC_INTHEBOX.card03.textBottom}
    #Text If your Moochies develops a hardware or
    Validate content, JSON    id=charging    ${DIC_INTHEBOX.card04.textTop}

5-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
    [Tags]    content
    Validate component - Disclaimer    ${locale}

6-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale}


