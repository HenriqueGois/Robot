*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses Home

*** Keywords ***
Accsses Home
    Timeout 20s
    New Browser    chromium    false
    New Page    https://homolog.moochies.com//${locale}
    Sleep    2s

*** Variables ***
${locale}       en-AU

*** Test Cases ***
0.1.Create Header Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes no HEADER da pagina,
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    header
    &{MENU_LINKS}    Get component to Dic, Links, JSON    ${locale}    MenuLinks
    Set Global Variable    ${MENU_LINKS}

    &{DIC_BAG}    Get component to Dic, JSON    ${locale}    Bag
    Set Global Variable    ${DIC_BAG}

    &{DIC_CART}    Get component to Dic, JSON    ${locale}    CartBottom
    Set Global Variable    ${DIC_CART}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: MenuLinks, Bag, CartBottom. 

0.2.Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes na pagina,
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    content

    &{DIC_BESTCHOICE}    Get component to Dic, JSON    ${locale}    MoochiesBestChoice
    Set Global Variable    ${DIC_BESTCHOICE}

    &{DIC_PERFECT}    Get component to Dic, JSON    ${locale}    PerfectForKids
    Set Global Variable    ${DIC_PERFECT}
    
    IF    "${locale}" == "nl-NL"
        ${DIC_PERFECT["paragraph_2"]}      Replace String    ${DIC_PERFECT["paragraph_2"]}    Ã©Ã©    éé
        Log To Console    ${DIC_PERFECT["paragraph_2"]}
        Set To Dictionary	 ${DIC_PERFECT}	    paragraph_2=${DIC_PERFECT["paragraph_2"]}
    END

    &{DIC_SMALLFEATURES}    Get component to Dic, JSON    ${locale}    SmallFeatures
    Set Global Variable    ${DIC_SMALLFEATURES}

    &{DIC_STAYTOUCH}    Get component to Dic, JSON    ${locale}    StayInTouch
    Set Global Variable    ${DIC_STAYTOUCH}
    
    &{DIC_TABLE}    Get component to Dic, JSON    ${locale}    FeaturesTable
    Set Global Variable    ${DIC_TABLE}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: MoochiesBestChoice, PerfectForKids, SmallFeatures, StayInTouch, FeaturesTable.

0.3.Create Footer Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes no FOOTER da pagina
    ...    buscando o arquivo Json no diretório __Contents.

    ...    Os dicionários são criados de acordo com Locale infomado.
    #Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    #Use algum de exemplo para declarar o dicionário.
    [Tags]    footer
    
    &{FOOTER_LINKS}    Get component to Dic, Links, JSON    ${locale}    FooterLinks
    Set Global Variable    ${FOOTER_LINKS}

    &{DIC_STAY}    Get component to Dic, JSON    ${locale}    StayInLoop
    Set Global Variable    ${DIC_STAY}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: FooterLinks, StayInLoop.

8.7-Vlidação Content - Carrocel
    [Documentation]    Validação do Texto presente no Carrocel - Content - HomePage
    [Tags]    content
    Validate component - Carrocel    ${locale}

1-Validate content About
    [Documentation]    Validação do Texto presente no btn About - NavBar - HomePage
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #About btn - NavBar
    Validate content, JSON    id=NavbarLink0    ${MENU_LINKS["test_1"]}
    #Menssagem para o relatório
    Set Test Message    Locale recebido: ${locale} | Conteudo(s): ${MENU_LINKS["test_1"]}

1.1-Validate content DropDown - About
    [Documentation]    Validação dos Textos presentes no DropDown - About - HomePage
    [Tags]    header
    #Abrir o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_1"]}
    Sleep    2s
    Validate content, JSON    id=About0    ${MENU_LINKS["/About"]}
    #Meet the Tam - DorpDown
    Validate content, JSON    id=About#TheTeam1    ${MENU_LINKS["/About#TheTeam"]}
    #News - DorpDown
    Validate content, JSON    id=ttps://moochies.medium.com2    ${MENU_LINKS["https://moochies.medium.com"]}
    #Fechar o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_1"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["test_1"]}(${MENU_LINKS["/About"]}, ${MENU_LINKS["/About#TheTeam"]}, ${MENU_LINKS["https://moochies.medium.com"]})

2-Validate content Products
    [Documentation]    Validação do Texto presente no btn Products - NavBar - HomePage
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #Products btn - NavBar
    Validate content, JSON    id=NavbarLink1    ${MENU_LINKS["test_2"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Conteudo(s): ${MENU_LINKS["test_2"]}

2.1-Validate content DropDown - Products
    [Documentation]    Validação dos Textos presentes no DropDown - Products - HomePage
    [Tags]    header
    #Abrir o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_2"]}
    Sleep    2s
    #Phone Watches Features DorpDown
    Validate content, JSON    id=PhoneWatches0    ${MENU_LINKS["/PhoneWatches"]}
    #Validação do SYNC - RNX
    IF    "${locale}" == "en-US"
        Validate RN    01-US
        #Moochies Connect DorpDown
        Validate content, JSON    id=MoochiesConnect1    ${MENU_LINKS["/MoochiesConnect"]}
        #MoochiesSync2 DorpDown
        Validate content, JSON    id=MoochiesSync2    ${MENU_LINKS["/MoochiesSync"]}
        #Swappable Straps DorpDown
        Validate content, JSON    id=SwappableStraps3    ${MENU_LINKS["/SwappableStraps"]}
        #Accessories DorpDown
        Validate content, JSON    id=Accessories4    ${MENU_LINKS["/Accessories"]}
        #MyMoochies App DorpDown
        Validate content, JSON    id=MyMoochiesApp5    ${MENU_LINKS["/MyMoochiesApp"]}
        #Validação do ODISSEY - RNX
    ELSE IF    "${locale}" == "en-AU"
        Validate RN    01-AU
        #MoochiesSync2 DorpDown
        Validate content, JSON    id=MoochiesOdyssey1    ${MENU_LINKS["/MoochiesOdyssey"]}
        #Moochies Connect DorpDown
        Validate content, JSON    id=MoochiesConnect2    ${MENU_LINKS["/MoochiesConnect"]}
        #Swappable Straps DorpDown
        Validate content, JSON    id=SwappableStraps3    ${MENU_LINKS["/SwappableStraps"]}
        #Accessories DorpDown
        Validate content, JSON    id=Accessories4    ${MENU_LINKS["/Accessories"]}
        #MyMoochies App DorpDown
        Validate content, JSON    id=MyMoochiesApp5    ${MENU_LINKS["/MyMoochiesApp"]}
    ELSE
        #Moochies Connect DorpDown
        Validate content, JSON    id=MoochiesConnect1    ${MENU_LINKS["/MoochiesConnect"]}
        #Swappable Straps DorpDown
        Validate content, JSON    id=SwappableStraps2    ${MENU_LINKS["/SwappableStraps"]}
        #Accessories DorpDown
        Validate content, JSON    id=Accessories3    ${MENU_LINKS["/Accessories"]}
        #MyMoochies App DorpDown
        Validate content, JSON    id=MyMoochiesApp4    ${MENU_LINKS["/MyMoochiesApp"]}
    END
    #Fechar o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_2"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/PhoneWatches"]}, ${MENU_LINKS["/MoochiesConnect"]}, ${MENU_LINKS["/SwappableStraps"]}, ${MENU_LINKS["/Accessories"]}, ${MENU_LINKS["/MyMoochiesApp"]}

3-Validate content Shop
    [Documentation]    Validação do Texto presente no btn Shop - NavBar - HomePage
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #Shop btn - NavBar
    Validate content, JSON    id=NavbarLink2    ${MENU_LINKS["/Shop"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/Shop"]}

4-Validate content SIM
    [Documentation]    Validação do Texto presente no btn SIM - NavBar - HomePage
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #SIM btn - NavBar
    Validate content, JSON    id=NavbarLink3    ${MENU_LINKS["test_3"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["test_3"]}

4.1-Validate content DropDown - SIM
    [Documentation]    Validação dos Textos presentes no DropDown - SIM - HomePage
    [Tags]    header
    #Abrir o DropDown
    Click    id=NavbarLink3
    Sleep    2s
    #Activate your sim DorpDown
    Validate content, JSON    id=Activate0    ${MENU_LINKS["/Activate"]}
    #TopUp DorpDown
    Validate content, JSON    id=TopUp1    ${MENU_LINKS["/TopUp"]}
    #Contact DorpDown
    Validate content, JSON    id=Contact?sim2    ${MENU_LINKS["/Contact?sim"]}
    #Fechar o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_3"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/Activate"]}, ${MENU_LINKS["/TopUp"]}, ${MENU_LINKS["/Contact?sim"]}

5-Validate content Why Moochies
    [Documentation]    Validação do Texto presente no btn Why Moochies - NavBar - HomePage
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #Why Moochies btn - NavBar
    Validate content, JSON    id=NavbarLink4    ${MENU_LINKS["test_4"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["test_4"]}

5.1-Validate content DropDown - Why Moochies
    [Documentation]    Validação dos Textos presentes no DropDown - Why Moochies - HomePage
    [Tags]    header
    #Abrir o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_4"]}
    Sleep    2s
    #Why Moochies DorpDown
    Validate content, JSON    id=WhyMoochies0    ${MENU_LINKS["/WhyMoochies"]}
    #Cahrity DorpDown
    Validate content, JSON    id=Charity1    ${MENU_LINKS["/Charity"]}
    #Reviews DorpDown
    Validate content, JSON
    ...    id=ttps://uk.trustpilot.com/review/moochies.com2
    ...    ${MENU_LINKS["https://uk.trustpilot.com/review/moochies.com"]}
    #Umboxing DorpDown
    Validate content, JSON    id=Unboxing3    ${MENU_LINKS["/Unboxing"]}
    #Fechar o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_4"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/WhyMoochies"]}, ${MENU_LINKS["/Charity"]}, ${MENU_LINKS["https://uk.trustpilot.com/review/moochies.com"]}, ${MENU_LINKS["/Unboxing"]}

6-Validate content Support
    [Documentation]    Validação do Texto presente no btn Support - NavBar - HomePage
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #Support btn - NavBar
    Validate content, JSON    id=NavbarLink5    ${MENU_LINKS["test_5"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["test_5"]}

6.1-Validate content DropDown - Support
    [Documentation]    Validação dos Textos presentes no DropDown - Support - HomePage
    [Tags]    header
    #Abrir o DropDown
    Click on MenuBar, Navigation    ${MENU_LINKS["test_5"]}
    Sleep    2s
    #24/7 Customer Support DorpDown
    Validate content, JSON    id=Contact?support0    ${MENU_LINKS["/Contact?support"]}
    #FAQ's DorpDown
    Validate content, JSON    id=FAQ1    ${MENU_LINKS["/FAQ"]}
    #Contact Us DorpDown
    Validate content, JSON    id=Contact?contact2    ${MENU_LINKS["/Contact?contact"]}
    #Menssagem para o relatorio
    Click on MenuBar, Navigation    ${MENU_LINKS["test_5"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/Contact?support"]}, ${MENU_LINKS["/FAQ"]}, ${MENU_LINKS["/Contact?contact"]}

7-Validate content Cart
    [Documentation]    Validação dos Textos presentes no Cart - HomePage
    [Tags]    header
    Log    Dicionário: ${DIC_BAG}
    Log    Dicionário: ${DIC_CART}
    #Abrir o Cart
    Click    xpath=(//img[@src='/_next/static/media/shop_cart.bbb63c45.svg'])[1]
    Sleep    2s
    #Titulo Cart
    Validate content, JSON    id=CartTitle    ${DIC_BAG["cartTitle"]}
    #Voucher Cart
    Validate content placeholder, JSON    xpath=//input[@type='text']    ${DIC_CART["inputPlaceholder"]}
    #Price Cart
    Validate content, JSON    id=PriceText    ${DIC_CART["priceText"]}
    #Btn Proceed to Payment Cart
    Validate content, JSON    id=ProceedBtn    ${DIC_CART["proceedBtn"]}
    #Btn Clear Cart Cart
    Validate content, JSON    xpath=//div[contains(@id,'ClearBtn')]    ${DIC_CART["clearBtn"]}
    # Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${DIC_BAG["cartTitle"]}, ${DIC_CART["inputPlaceholder"]}, ${DIC_CART["priceText"]}, ${DIC_CART["proceedBtn"]}, ${DIC_CART["clearBtn"]}

8.1-Validate content - Header    
    [Documentation]    Validação do Texto presente no elemento Header - Content HomePage
    [Tags]    content
    Validate component - Header    ${locale}
    Validate content, JSON    xpath=(//p[contains(.,'${DIC_HEADER["buttonText"]}')])[1]    ${DIC_HEADER["buttonText"]}

8.2-Validate content - StayInTouch
    [Documentation]    Validação do Texto presente no elemento Stay in Touch - Content HomePage
    [Tags]    content
    Search element    xpath=//div[contains(@class,'sc-6df382c9-0 krTiLB')]
    Log    Dicionário: ${DIC_STAYTOUCH}
    Sleep    2s
    #Title Stay in Touch with Your Child!
    Validate content, JSON    id=StayInTouchTitle    ${DIC_STAYTOUCH["title"]}
    #Title Anytime. Anywhere.
    Validate content, JSON    id=StayInTouchTitle    ${DIC_STAYTOUCH["subTitle"]}

8.3-Validate content - PerfectForKids
    [Documentation]    Validação do Texto presente no elemento Perfect for Kids - Content HomePage
    [Tags]    content
    Search element    xpath=//div[contains(@class,'sc-70c9b36d-2 kolUcs')]
    Log    Dicionário: ${DIC_PERFECT}
    Sleep    2s
    #Title Perfect for kids of any age! With features designed for safety
    Validate content, JSON    id=PerfectTitle    ${DIC_PERFECT["title"]}
    #Title Each Moochies Phone Watch is a standalone phone with a built-in SIM card.
    Validate content, JSON    id=PerfectParagraph1    ${DIC_PERFECT["paragraph_1"]}
    #Title It works alongside the FREE MyMoochies App....
    Validate content, JSON    id=PerfectParagraph2    ${DIC_PERFECT["paragraph_2"]}

8.4-Validate content - BestChoice
    [Documentation]    Validação do Texto presente no elemento Best Choice - Content HomePage
    [Tags]    content
    Search element    xpath=//div[contains(@class,'sc-f72f3319-1 jBcISp')]
    Log    Dicionário: ${DIC_BESTCHOICE}
    Sleep    2s
    #Title See What Makes Moochies The Best Choice For Your Child
    Validate content, JSON    id=MoochiesBestChoiceTitle_desktop    ${DIC_BESTCHOICE["title"]}
    #Title Card1 - Better Than a Mobile Phone
    Validate content, JSON    id=BetterTitle_desktop    ${DIC_BESTCHOICE.card01["title"]}
    #Title Card1 - Moochies is built from the ground up with the security of your child in mind.
    Validate content, JSON    id=BetterParagraph_desktop    ${DIC_BESTCHOICE.card01["paragraph"]}
    #Title Card2 - Giving Them Freedom While Keeping Them Safe
    Validate content, JSON    id=FreedomTitle_desktop    ${DIC_BESTCHOICE.card03["title"]}
    #Title Card2 - With GPS tracking, geo-fenced safe zones, and SOS alerts, you have peace of mind while giving them independence.
    Validate content, JSON    id=FreedomParagraph_desktop    ${DIC_BESTCHOICE.card03["paragraph"]}
    #Title Card3 - Tough Enough For Everyday Wear
    Validate content, JSON    id=ToughTitle_desktop    ${DIC_BESTCHOICE.card02["title"]}
    #Title Card3 - With toughened glass screens and soft but sturdy straps, they don't have to worry as they run and play!
    Validate content, JSON    id=ToughParagraph_desktop    ${DIC_BESTCHOICE.card02["paragraph"]}
    #Title Card4 - Helps Them Focus on the Important Things
    Validate content, JSON    id=FocusTitle_desktop    ${DIC_BESTCHOICE.card04["title"]}
    #Title Card4 - With class mode and alarm settings, Moochies is here to stop distractions and help them focus on learning
    Validate content, JSON    id=FocusParagraph_desktop    ${DIC_BESTCHOICE.card04["paragraph"]}

8.5-Validate content - FeaturesAnimation
    [Documentation]    Validação do Texto presente no elemento Features Animation - Content HomePage
    [Tags]    content
    Validate component - FeaturesAnimation    ${locale}

8.6-Validate content - DontLetTheRain
    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage
    [Tags]    content
    Validate component - DontLetTheRain    ${locale}

8.8-Validate content - SmallFeatures
    [Documentation]    Validação do Texto presente no elemento Small Features - Content HomePage
    [Tags]    content
    Search element    xpath=//p[contains(@id,'NoSocialText')]/../../..
    Log    Dicionário: ${DIC_SMALLFEATURES}
    Sleep    2s
    #Title NO Social Media or
    Validate content, JSON    id=NoSocialText    ${DIC_SMALLFEATURES.noSocial_1}
    #Title Internet Browser
    Validate content, JSON    id=NoSocialText    ${DIC_SMALLFEATURES.noSocial_2}
    #Title FREE MyMoochies
    Validate content, JSON    id=FreeAppText    ${DIC_SMALLFEATURES.freeApp_1}
    #Title Guardian App
    Validate content, JSON    id=FreeAppText    ${DIC_SMALLFEATURES.freeApp_2}
    #Title Splash and
    Validate content, JSON    id=SplashText    ${DIC_SMALLFEATURES.splashProof_1}
    #Title Sweatproof
    Validate content, JSON    id=SplashText    ${DIC_SMALLFEATURES.splashProof_2}

8.9-Validate content - LearnMore
    [Documentation]    Validação do Texto presente no elemento Learn More About Moochies PhoneWatch - Content HomePage
    [Tags]    content
    IF    "${locale}" == "en-US"
        Get Element States    xpath=//h2[contains(@id,'TableTitle')]/..    ==       detached
        Validate RN    03-US
    ELSE
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
    #Btn Buy Now
    Validate content, JSON    xpath=//p[contains(.,'${DIC_TABLE["btnText"]}')]    ${DIC_TABLE["btnText"]}
    
    END
    
8.10-Validate content - MakeYourMoochies
    [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
    [Tags]    content
    Validate component - MakeYourMoochies    ${locale}

8.11-Validate content - NoLockIn
    [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
    [Tags]    content
    Validate component - NoLockIn    ${locale}

8.12-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no Disclaimer - Content HomePage
    [Tags]    content
    Validate component - Disclaimer    ${locale}
    
8.13-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale}

9-Validate content About - Footer
    [Documentation]    Validação do Texto presente no titulo About - Footer
    [Tags]    footer
    Log    Dicionário: ${FOOTER_LINKS}
    #Title About
    Validate content, JSON    id=FooterMenuLink0    ${FOOTER_LINKS["test_1"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["test_1"]}

9.1-Validate sub-content About - Footer
    [Documentation]    Validação dos Textos presentes no sub-content About - Footer
    [Tags]    footer
    Sleep    2s
    #Button About Moochies
    Validate content, JSON    id=FooterAbout0    ${FOOTER_LINKS["/About"]}
    #Button Meet the Team
    Validate content, JSON    id=FooterAbout#TheTeam0    ${FOOTER_LINKS["/About#TheTeam"]}
    #Button News
    Validate content, JSON    id=Footerttps://moochies.medium.com0    ${FOOTER_LINKS["https://moochies.medium.com"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["/About"]}, ${FOOTER_LINKS["/About#TheTeam"]}, ${FOOTER_LINKS["https://moochies.medium.com"]}

10-Validate content Products - Footer
    [Documentation]    Validação do Texto presente no titulo Products - Footer
    [Tags]    footer
    Log    Dicionário: ${FOOTER_LINKS}
    #Title Products
    Validate content, JSON    id=FooterMenuLink1    ${FOOTER_LINKS["test_2"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["test_2"]}

10.1-Validate sub-content Products - Footer
    [Documentation]    Validação dos Textos presentes no sub-content Products - Footer
    [Tags]    footer
    Sleep    2s
    #Button Phone Watches Features
    Validate content, JSON    id=FooterPhoneWatches1    ${FOOTER_LINKS["/PhoneWatches"]}
    #Validate ODISSEY - RNX
    IF    "${locale}" == "en-AU"
        Validate RN    01-AU
        Validate content, JSON    id=FooterMoochiesOdyssey1    ${FOOTER_LINKS["/MoochiesOdyssey"]}
    END
    #Button Moochies Connect
    Validate content, JSON    id=FooterMoochiesConnect1    ${FOOTER_LINKS["/MoochiesConnect"]}
    #Validate SYNC - RNX
    IF    "${locale}" == "en-US"
        Validate RN    01-US
        Validate content, JSON    id=FooterMoochiesSync1    ${FOOTER_LINKS["/MoochiesSync"]}
    END
    #Button Swappable Straps
    Validate content, JSON    id=FooterSwappableStraps1    ${FOOTER_LINKS["/SwappableStraps"]}
    #Button Accessories
    Validate content, JSON    id=FooterAccessories1    ${FOOTER_LINKS["/Accessories"]}
    #Button MyMoochies App
    Validate content, JSON    id=FooterMyMoochiesApp1    ${FOOTER_LINKS["/MyMoochiesApp"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["/PhoneWatches"]}, ${FOOTER_LINKS["/MoochiesConnect"]},
    ...    ${FOOTER_LINKS["/SwappableStraps"]}, ${FOOTER_LINKS["/Accessories"]}, ${FOOTER_LINKS["/MyMoochiesApp"]}

11-Validate content SIM - Footer
    [Documentation]    Validação do Texto presente no titulo SIM - Footer
    [Tags]    footer
    Log    Dicionário: ${FOOTER_LINKS}
    #Title SIM
    Validate content, JSON    id=FooterMenuLink2    ${FOOTER_LINKS["test_3"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["test_3"]}

11.1-Validate sub-content SIM - Footer
    [Documentation]    Validação dos Textos presentes no sub-content SIM - Footer
    [Tags]    footer
    Sleep    2s
    #Button Activate Your SIM
    Validate content, JSON    id=FooterActivate2    ${FOOTER_LINKS["/Activate"]}
    #Button Top Up
    Validate content, JSON    id=FooterTopUp2    ${FOOTER_LINKS["/TopUp"]}
    #Button Get SIM Support
    Validate content, JSON    id=FooterContact?sim2    ${FOOTER_LINKS["/Contact?sim"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["/Activate"]}, ${FOOTER_LINKS["/TopUp"]}, ${FOOTER_LINKS["/Contact?sim"]}

12-Validate content Support - Footer
    [Documentation]    Validação do Texto presente no titulo Support - Footer
    [Tags]    footer
    Log    Dicionário: ${FOOTER_LINKS}
    #Title Support
    Validate content, JSON    id=FooterMenuLink3    ${FOOTER_LINKS["test_5"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["test_5"]}

12.1-Validate sub-content Support - Footer
    [Documentation]    Validação dos Textos presentes no sub-content Support - Footer
    [Tags]    footer
    Sleep    2s
    #Button 24/7 Customer Support
    Validate content, JSON    id=FooterContact?support3    ${FOOTER_LINKS["/Contact?support"]}
    #Button FAQ's
    Validate content, JSON    id=FooterFAQ3    ${FOOTER_LINKS["/FAQ"]}
    #Button Contact Us
    Validate content, JSON    id=FooterContact?us3    ${FOOTER_LINKS["/Contact?us"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["/Contact?support"]}, ${FOOTER_LINKS["/FAQ"]}, ${FOOTER_LINKS["/Contact?us"]}

13-Validate content STAY IN THE LOOP? - Footer
    [Documentation]    Validação do Texto presente no titulo STAY IN THE LOOP? - Footer
    [Tags]    footer
    Log    Dicionário: ${DIC_STAY}
    #Title STAY IN THE LOOP?
    Validate content, JSON    id=StayInTheLoopTitle    ${DIC_STAY["sectionTitle"]}
    #Title Terms and Conditions
    Validate content, JSON    id=TermsAndConditions    ${DIC_STAY["termsText"]}
    #Title Privacy Policy
    Validate content, JSON    id=PrivacyPolicy    ${DIC_STAY["privacyText"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${DIC_STAY["sectionTitle"]}, ${DIC_STAY["termsText"]}, ${DIC_STAY["privacyText"]}


