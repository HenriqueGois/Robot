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
    New Page    https://kids-website-homolog.vercel.app/${locale}
    Sleep    2s

*** Variables ***
${locale}       en-AU

*** Test Cases ***
0.1-Create Header Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes no HEADER da pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    ...    Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    [Tags]    header

    &{MENU_LINKS}    Get component to Dic, Links, JSON    ${locale}    MenuLinks
    Set Global Variable    ${MENU_LINKS}

    &{DIC_BAG}    Get component to Dic, JSON    ${locale}    Bag
    Set Global Variable    ${DIC_BAG}

    &{DIC_CART}    Get component to Dic, JSON    ${locale}    CartBottom
    Set Global Variable    ${DIC_CART}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: AccordionMenu

0.2-Create Content Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes no HEADER da pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    ...    Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    [Tags]    content
    #Use algum de exemplo para declarar o dicionário.

    &{DIC_HEADER}    Get component to Dic, JSON    ${locale}    Header
    Set Global Variable    ${DIC_HEADER}

    &{DIC_BESTCHOICE}    Get component to Dic, JSON    ${locale}    MoochiesBestChoice
    Set Global Variable    ${DIC_BESTCHOICE}

    &{DIC_PERFECT}    Get component to Dic, JSON    ${locale}    PerfectForKids
    Set Global Variable    ${DIC_PERFECT}

    &{DIC_SMALLFEATURES}    Get component to Dic, JSON    ${locale}    SmallFeatures
    Set Global Variable    ${DIC_SMALLFEATURES}

    &{DIC_STAYTOUCH}    Get component to Dic, JSON    ${locale}    StayInTouch
    Set Global Variable    ${DIC_STAYTOUCH}

    &{DIC_TABLE}    Get component to Dic, JSON    ${locale}    FeaturesTable
    Set Global Variable    ${DIC_TABLE}

0.3-Create Footer Dictionaries
    [Documentation]    Criação dos dicionários que serão usados para a validação dos elementos presentes no FOOTER da pagina
    ...    buscando o arquivo Json no diretório __Contents.
    ...    Os dicionários são criados de acordo com Locale infomado.
    ...    Nesse caso de teste é necessário declarar todos os componentes que serão utilizados ao longo dos testes.
    [Tags]    footer

    &{ACCORDION_LINKS}    Get component to Dic, Links, JSON - Mobile    ${locale}    AccordionMenu
    Set Global Variable    ${ACCORDION_LINKS}

    &{DIC_STAY}    Get component to Dic, JSON    ${locale}    StayInLoop
    Set Global Variable    ${DIC_STAY}

    Set Test Message    Locale informado: ${locale}. Dicionários criados: FooterLinks, StayInLoop

8.7-Vlidação Content - Carrocel
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - Carrocel    ${locale}
1-Validate content Menu-Hamburguer
    [Documentation]    Validação do Texto presente no btn About - NavBar
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #Abrir o menu hamburguer
    Click    xpath=//div[contains(@class,'sc-dc737f8d-0 sjIkL')]
    Sleep    2s
    #About btn - NavBar
    Validate content, JSON    id=NavbarLinkMobile0    ${MENU_LINKS["test_1"]}
    #About btn - NavBar
    Validate content, JSON    id=NavbarLinkMobile1    ${MENU_LINKS["test_2"]}
    #About btn - NavBar
    Validate content, JSON    id=NavbarLinkMobile2    ${MENU_LINKS["/Shop"]}
    #About btn - NavBar
    Validate content, JSON    id=NavbarLinkMobile3    ${MENU_LINKS["test_3"]}
    #About btn - NavBar
    Validate content, JSON    id=NavbarLinkMobile4    ${MENU_LINKS["test_4"]}
    #About btn - NavBar
    Validate content, JSON    id=NavbarLinkMobile5    ${MENU_LINKS["test_5"]}
    #Menssagen oara o relatorio
    Set Test Message    Locale recebido: ${locale} | Conteudo(s): ${MENU_LINKS["test_1"]}

1.1-Validate content DropDown - About
    [Documentation]    Validação do Texto presente no btn About - NavBar
    [Tags]    header
    Log    Dicionário: ${MENU_LINKS}
    #Abrir o menu hamburguer
    Click    xpath=//div[contains(@class,'sc-dc737f8d-0 sjIkL')]
    Sleep    2s
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_1"]}')])[2]
    Sleep    2s
    #About - DorpDown
    Validate content, JSON    id=AboutMobile0    ${MENU_LINKS["/About"]}
    #Meet the Team - DorpDown
    Validate content, JSON    id=About#TheTeamMobile1    ${MENU_LINKS["/About#TheTeam"]}
    #News - DorpDown
    Validate content, JSON    id=ttps://moochies.medium.comMobile2    ${MENU_LINKS["https://moochies.medium.com"]}
    #Fechar o DropDown
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_1"]}')])[2]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/About"]}, ${MENU_LINKS["/About#TheTeam"]}, ${MENU_LINKS["https://moochies.medium.com"]}

1.2-Validate content DropDown - Products
    [Documentation]    Validação dos Textos presentes no DropDown - Products
    [Tags]    header
    #Abrir o DropDown
    Click    xpath=//div[contains(@class,'sc-dc737f8d-0 sjIkL')]
    Sleep    2s
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_2"]}')])[2]
    Sleep    2s
    #Phone Watches Features DorpDown
    Validate content, JSON    id=PhoneWatchesMobile0    ${MENU_LINKS["/PhoneWatches"]}
    #Validação do SYNC - RNX
    IF    "${locale}" == "en-US"
        #Moochies Connect DorpDown
        Validate content, JSON    id=MoochiesConnectMobile1    ${MENU_LINKS["/MoochiesConnect"]}
        #MoochiesSync2 DorpDown
        Validate content, JSON    id=MoochiesSyncMobile2    ${MENU_LINKS["/MoochiesSync"]}
        #Swappable Straps DorpDown
        Validate content, JSON    id=SwappableStrapsMobile3    ${MENU_LINKS["/SwappableStraps"]}
        #Accessories DorpDown
        Validate content, JSON    id=AccessoriesMobile4    ${MENU_LINKS["/Accessories"]}
        #MyMoochies App DorpDown
        Validate content, JSON    id=MyMoochiesAppMobile5    ${MENU_LINKS["/MyMoochiesApp"]}
        #Validação do ODISSEY - RNX
    ELSE IF    "${locale}" == "en-AU"
        #MoochiesSync2 DorpDown
        Validate content, JSON    id=MoochiesOdysseyMobile1    ${MENU_LINKS["/MoochiesOdyssey"]}
        #Moochies Connect DorpDown
        Validate content, JSON    id=MoochiesConnectMobile2    ${MENU_LINKS["/MoochiesConnect"]}
        #Swappable Straps DorpDown
        Validate content, JSON    id=SwappableStrapsMobile3    ${MENU_LINKS["/SwappableStraps"]}
        #Accessories DorpDown
        Validate content, JSON    id=AccessoriesMobile4    ${MENU_LINKS["/Accessories"]}
        #MyMoochies App DorpDown
        Validate content, JSON    id=MyMoochiesAppMobile5    ${MENU_LINKS["/MyMoochiesApp"]}
    ELSE
        #Moochies Connect DorpDown
        Validate content, JSON    id=MoochiesConnectMobile1    ${MENU_LINKS["/MoochiesConnect"]}
        #Swappable Straps DorpDown
        Validate content, JSON    id=SwappableStrapsMobile2    ${MENU_LINKS["/SwappableStraps"]}
        #Accessories DorpDown
        Validate content, JSON    id=AccessoriesMobile3    ${MENU_LINKS["/Accessories"]}
        #MyMoochies App DorpDown
        Validate content, JSON    id=MyMoochiesAppMobile4    ${MENU_LINKS["/MyMoochiesApp"]}
    END
    #Fechar o DropDown
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_2"]}')])[2]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/PhoneWatches"]}, ${MENU_LINKS["/MoochiesConnect"]}, ${MENU_LINKS["/SwappableStraps"]}, ${MENU_LINKS["/Accessories"]}, ${MENU_LINKS["/MyMoochiesApp"]}

1.3-Validate content DropDown - SIM
    [Documentation]    Validação dos Textos presentes no DropDown - SIM
    [Tags]    header
    #Abrir o DropDown
    Click    xpath=//div[contains(@class,'sc-dc737f8d-0 sjIkL')]
    Sleep    2s
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_3"]}')])[2]
    Sleep    2s
    #Activate your sim DorpDown
    Validate content, JSON    id=ActivateMobile0    ${MENU_LINKS["/Activate"]}
    #TopUp DorpDown
    Validate content, JSON    id=TopUpMobile1    ${MENU_LINKS["/TopUp"]}
    #Contact DorpDown
    Validate content, JSON    id=Contact?simMobile2    ${MENU_LINKS["/Contact?sim"]}
    #Fechar o DropDown
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_3"]}')])[2]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/Activate"]}, ${MENU_LINKS["/TopUp"]}, ${MENU_LINKS["/Contact?sim"]}

1.4-Validate content DropDown - Why Moochies
    [Documentation]    Validação dos Textos presentes no DropDown - Why Moochies
    [Tags]    header
    #Abrir o DropDown
    Click    xpath=//div[contains(@class,'sc-dc737f8d-0 sjIkL')]
    Sleep    2s
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_4"]}')])[2]
    Sleep    2s
    #Why Moochies DorpDown
    Validate content, JSON    id=WhyMoochiesMobile0    ${MENU_LINKS["/WhyMoochies"]}
    #Cahrity DorpDown
    Validate content, JSON    id=CharityMobile1    ${MENU_LINKS["/Charity"]}
    #Reviews DorpDown
    Validate content, JSON
    ...    id=ttps://uk.trustpilot.com/review/moochies.comMobile2
    ...    ${MENU_LINKS["https://uk.trustpilot.com/review/moochies.com"]}
    #Umboxing DorpDown
    Validate content, JSON    id=UnboxingMobile3    ${MENU_LINKS["/Unboxing"]}
    #Fechar o DropDown
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_4"]}')])[2]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/WhyMoochies"]}, ${MENU_LINKS["/Charity"]}, ${MENU_LINKS["https://uk.trustpilot.com/review/moochies.com"]}, ${MENU_LINKS["/Unboxing"]}

1.5-Validate content DropDown - Support
    [Documentation]    Validação dos Textos presentes no DropDown - Support
    [Tags]    header
    #Abrir o DropDown
    Click    xpath=//div[contains(@class,'sc-dc737f8d-0 sjIkL')]
    Sleep    2s
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_5"]}')])[2]
    Sleep    2s
    #24/7 Customer Support DorpDown
    Validate content, JSON    id=Contact?supportMobile0    ${MENU_LINKS["/Contact?support"]}
    #FAQ's DorpDown
    Validate content, JSON    id=FAQMobile1    ${MENU_LINKS["/FAQ"]}
    #Contact Us DorpDown
    Validate content, JSON    id=Contact?contactMobile2    ${MENU_LINKS["/Contact?contact"]}
    #Menssagem para o relatorio
    Click    xpath=(//button[@type='button'][contains(.,'${MENU_LINKS["test_5"]}')])[2]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${MENU_LINKS["/Contact?support"]}, ${MENU_LINKS["/FAQ"]}, ${MENU_LINKS["/Contact?contact"]}

2-Validate content Cart
    [Documentation]    Validação dos Textos presentes no Cart
    [Tags]    header
    Log    Dicionário: ${DIC_BAG}
    Log    Dicionário: ${DIC_CART}
    #Abrir o Cart
    Click    xpath=(//img[@src='/_next/static/media/shop_cart.bbb63c45.svg'])[1]
    Sleep    2s
    #Titulo Cart
    Validate content, JSON    id=CartTitle    ${DIC_BAG["cartTitle"]}
    #Voucher Cart
    # Validate content, JSON    text=${DIC_CART["inputPlaceholder"]}    ${DIC_CART["inputPlaceholder"]}
    #Price Cart
    Validate content, JSON    id=PriceText    ${DIC_CART["priceText"]}
    #Btn Proceed to Payment Cart
    Validate content, JSON    id=ProceedBtn    ${DIC_CART["proceedBtn"]}
    #Btn Clear Cart Cart
    Validate content, JSON    id=ClearBtn    ${DIC_CART["clearBtn"]}
    # Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${DIC_BAG["cartTitle"]}, ${DIC_CART["priceText"]}, ${DIC_CART["proceedBtn"]}, ${DIC_CART["clearBtn"]}

3-Validate content - Header
   [Documentation]    Validação do Texto presente no elemento Header - Content HomePage
   [Tags]    content
   Search element    id=Header
   Log    Dicionário: ${DIC_HEADER}
   Sleep    2s
   #Title YOUR KID'S FIRST
   Validate content, JSON    id=HeaderTitle    ${DIC_HEADER["headerTitle1"]}
   #Title MOBILE PHONE
   Validate content, JSON    id=HeaderTitle    ${DIC_HEADER["headerTitle2"]}
   #Title GIVING PARENTS PEACE OF MIND
   Validate content, JSON    id=HeaderSubTitle    ${DIC_HEADER["headerSubtitle"]}
   #Button Shop Now
   Validate content, JSON
   ...    xpath=(//p[contains(.,'${DIC_HEADER["buttonText"]}')])[2]
   ...    ${DIC_HEADER["buttonText"]}

4-Validate content - StayInTouch
   [Documentation]    Validação do Texto presente no elemento Stay in Touch - Content HomePage
   [Tags]    content
   Search element    xpath=//div[contains(@class,'sc-6df382c9-0 krTiLB')]
   Log    Dicionário: ${DIC_STAYTOUCH}
   Sleep    2s
   #Title Stay in Touch with Your Child!
   Validate content, JSON    id=StayInTouchTitle    ${DIC_STAYTOUCH["title"]}
   #Title Anytime. Anywhere.
   Validate content, JSON    id=StayInTouchTitle    ${DIC_STAYTOUCH["subTitle"]}

5-Validate content - PerfectForKids
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
   # Validate content, JSON    id=PerfectParagraph2    ${DIC_PERFECT["paragraph_2"]}

6-Validate content - BestChoice
   [Documentation]    Validação do Texto presente no elemento Best Choice - Content HomePage
   [Tags]    content
   Search element    xpath=//div[contains(@class,'sc-f72f3319-1 jBcISp')]
   Log    Dicionário: ${DIC_BESTCHOICE}
   Sleep    2s
   #Title See What Makes Moochies The Best Choice For Your Child
   Validate content, JSON    id=MoochiesBestChoiceTitle_mobile    ${DIC_BESTCHOICE["title"]}
   #Title Card1 - Better Than a Mobile Phone
   Validate content, JSON    id=BetterTitle    ${DIC_BESTCHOICE.card01["title"]}
   #Title Card1 - Moochies is built from the ground up with the security of your child in mind.
   Validate content, JSON    id=BetterParagraph    ${DIC_BESTCHOICE.card01["paragraph"]}
   #Title Card2 - Giving Them Freedom While Keeping Them Safe
   Validate content, JSON    id=FreedomTitle    ${DIC_BESTCHOICE.card03["title"]}
   #Title Card2 - With GPS tracking, geo-fenced safe zones, and SOS alerts, you have peace of mind while giving them independence.
   Validate content, JSON    id=FreedomParagraph    ${DIC_BESTCHOICE.card03["paragraph"]}
   #Title Card3 - Tough Enough For Everyday Wear
   Validate content, JSON    id=ToughTitle   ${DIC_BESTCHOICE.card02["title"]}
   #Title Card3 - With toughened glass screens and soft but sturdy straps, they don't have to worry as they run and play!
   Validate content, JSON    id=ToughParagraph    ${DIC_BESTCHOICE.card02["paragraph"]}
   #Title Card4 - Helps Them Focus on the Important Things
   Validate content, JSON    id=FocusTitle    ${DIC_BESTCHOICE.card04["title"]}
   #Title Card4 - With class mode and alarm settings, Moochies is here to stop distractions and help them focus on learning
   Validate content, JSON    id=FocusParagraph    ${DIC_BESTCHOICE.card04["paragraph"]}

7-Validate content - FeaturesAnimation
    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage
    [Tags]    content
    Validate component - FeaturesAnimation    ${locale}

8-Validate content - DontLetTheRain
    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage
    [Tags]    content
    Validate component - DontLetTheRain    ${locale}

9-Validate content - SmallFeatures
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

10-Validate content - LearnMore
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

11-Validate content - MakeYourMoochies
   [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
   [Tags]    content
    Validate component - MakeYourMoochies    ${locale}

12-Validate content - NoLockIn
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - NoLockIn    ${locale}

13-Validate content - Disclaimer
   [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage
   [Tags]    content
    Validate component - Disclaimer    ${locale}

14-Validate content - GetSocial
   [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
   [Tags]    content
   Validate component - GetSocial    ${locale}

15-Validate content - Footer
    [Documentation]    Validação do Texto presente no titulo About - Footer
    [Tags]    footer
    Log    Dicionário: ${ACCORDION_LINKS}
    Search element    xpath=//div[@class='accordion']
    #Title About
    Validate content, JSON
    ...    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_1"]}FooterMobile')]
    ...    ${ACCORDION_LINKS["test_1"]}
    #Title Products
    Validate content, JSON    id=${ACCORDION_LINKS["test_2"]}FooterMobile    ${ACCORDION_LINKS["test_2"]}
    #Title SIM
    Validate content, JSON    id=${ACCORDION_LINKS["test_3"]}FooterMobile    ${ACCORDION_LINKS["test_3"]}
    #Title Support
    Validate content, JSON    id=${ACCORDION_LINKS["test_5"]}FooterMobile    ${ACCORDION_LINKS["test_5"]}
    #Menssagem para o relatorio
    Set Test Message    Locale recebido: ${locale} | Texto(s) validados: ${ACCORDION_LINKS["test_1"]}

15.1-Validate dropdown About - Footer
    [Documentation]    Validação dos Textos presentes no sub-content About - Footer
    [Tags]    footer
    Click    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_1"]}FooterMobile')]
    Sleep    2s
    #Button About Moochies
    Validate content, JSON    xpath=//a[@id='AboutFooterMobile']    ${ACCORDION_LINKS["/About"]}
    #Button Meet the Team
    Validate content, JSON    id=About#TheTeamFooterMobile    ${ACCORDION_LINKS["/About#TheTeam"]}
    #Button News
    Validate content, JSON
    ...    id=ttps://moochies.medium.comFooterMobile
    ...    ${ACCORDION_LINKS["https://moochies.medium.com"]}
    Click    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_1"]}FooterMobile')]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${ACCORDION_LINKS["/About"]}, ${ACCORDION_LINKS["/About#TheTeam"]}, ${ACCORDION_LINKS["https://moochies.medium.com"]}

15.2-Validate sub-content Products - Footer
    [Documentation]    Validação dos Textos presentes no sub-content Products - Footer
    [Tags]    footer
    Click    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_2"]}FooterMobile')]
    Sleep    2s
    #Button Phone Watches Features
    Validate content, JSON    id=PhoneWatchesFooterMobile    ${ACCORDION_LINKS["/PhoneWatches"]}
    #Validate ODISSEY - RNX
    IF    "${locale}" == "en-AU"
        Validate content, JSON    id=MoochiesOdysseyFooterMobile    ${ACCORDION_LINKS["/MoochiesOdyssey"]}
    END
    #Button Moochies Connect
    Validate content, JSON    id=MoochiesConnectFooterMobile    ${ACCORDION_LINKS["/MoochiesConnect"]}
    #Validate SYNC - RNX
    IF    "${locale}" == "en-US"
        Validate content, JSON    id=MoochiesSyncFooterMobile    ${ACCORDION_LINKS["/MoochiesSync"]}
    END
    #Button Swappable Straps
    # Validate content, JSON    id=SwappableStrapsFooterMobile    ${ACCORDION_LINKS["/SwappableStraps"]}
    #Button Accessories
    Validate content, JSON    id=AccessoriesFooterMobile    ${ACCORDION_LINKS["/Accessories"]}
    #Button MyMoochies App
    Validate content, JSON    id=MyMoochiesAppFooterMobile    ${ACCORDION_LINKS["/MyMoochiesApp"]}
    Click    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_1"]}FooterMobile')]
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${ACCORDION_LINKS["/PhoneWatches"]}, ${ACCORDION_LINKS["/MoochiesConnect"]},
    ...    ${ACCORDION_LINKS["/Accessories"]}, ${ACCORDION_LINKS["/MyMoochiesApp"]}

15.3-Validate sub-content SIM - Footer
    [Documentation]    Validação dos Textos presentes no sub-content SIM - Footer
    [Tags]    footer
    Click    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_3"]}FooterMobile')]
    Sleep    2s
    #Button Activate Your SIM
    Validate content, JSON    id=ActivateFooterMobile    ${ACCORDION_LINKS["/Activate"]}
    #Button Top Up
    Validate content, JSON    id=TopUpFooterMobile    ${ACCORDION_LINKS["/TopUp"]}
    #Button Get SIM Support
    # Validate content, JSON    id=ContactFooterMobile    ${ACCORDION_LINKS["/Contact?sim"]}
    #Menssagem para o relatorio
    Set Test Message
    ...    Locale recebido: ${locale} | Texto(s) validados: ${ACCORDION_LINKS["/Activate"]}, ${ACCORDION_LINKS["/TopUp"]}

15.4-Validate sub-content Support - Footer
    [Documentation]    Validação dos Textos presentes no sub-content Support - Footer
    [Tags]    footer
    Click    xpath=//h3[contains(@id,'${ACCORDION_LINKS["test_5"]}FooterMobile')]
    Sleep    2s
    #Button 24/7 Customer Support
    # Validate content, JSON    id=FooterContact?support3    ${FOOTER_LINKS["/Contact?support"]}
    #Button FAQ's
    Validate content, JSON    id=FAQFooterMobile    ${ACCORDION_LINKS["/FAQ"]}
    #Button Contact Us
    # Validate content, JSON    id=FooterContact?us3    ${FOOTER_LINKS["/Contact?us"]}
    #Menssagem para o relatorio
    # Set Test Message
    # ...    Locale recebido: ${locale} | Texto(s) validados: ${FOOTER_LINKS["/Contact?support"]}, ${FOOTER_LINKS["/FAQ"]}, ${FOOTER_LINKS["/Contact?us"]}

15.5-Validate content STAY IN THE LOOP? - Footer
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