*** Settings ***
Documentation       Base de teste de componentes qye se repetem nas telas. 
Resource            ../../resources/base.robot

*** Keywords ***

Accsses
    [Arguments]    ${locale}     ${arg_page}
    Timeout 20s
    New Browser    chromium    false
    New Page    https://homolog.moochies.com/${locale}/${arg_page}

Validate component - Carrocel
    [Arguments]    ${locale}

    &{DIC_CAROUSEL}    Get component to Dic, JSON    ${locale}    FeaturesCarousel
    Set Global Variable    ${DIC_CAROUSEL}

    Search element    xpath=//h3[contains(@id,'${DIC_CAROUSEL.alarms.title}')]/../..
    Log    Dicionário: ${DIC_CAROUSEL}
    Sleep    2s
    #Title Alarms
    Validate content, JSON    id=${DIC_CAROUSEL.alarms.title}    ${DIC_CAROUSEL.alarms.title}
    #Sub-title Alarms
    Validate content, JSON    id=${DIC_CAROUSEL.alarms.title}_subTitle    ${DIC_CAROUSEL.alarms.subTitle}
    #Texto Alarms 
    Validate content, JSON    id=${DIC_CAROUSEL.alarms.title}_paragraph    ${DIC_CAROUSEL.alarms.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Title Messaging
    Validate content, JSON    id=${DIC_CAROUSEL.messaging.title}    ${DIC_CAROUSEL.messaging.title}
    #Sub-title Messaging
    Validate content, JSON    id=${DIC_CAROUSEL.messaging.title}_subTitle    ${DIC_CAROUSEL.messaging.subTitle}
    #Texto Messaging 
    Validate content, JSON    id=${DIC_CAROUSEL.messaging.title}_paragraph    ${DIC_CAROUSEL.messaging.paragraph}

    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.voiceCalling.title}    ${SPACE}
    #Title VoiceCalling
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.voiceCalling.title}
    #Sub-title VoiceCalling
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.voiceCalling.subTitle}
    #Texto VoiceCalling 
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.voiceCalling.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.noSocial.title}    ${SPACE}
    #Title NoSocial
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.noSocial.title}
    #Sub-title NoSocial
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.noSocial.subTitle}
    #Texto NoSocial 
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.noSocial.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.stepTracker.title}    ${SPACE}
    #Title StepTracker
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.stepTracker.title}
    #Sub-title StepTracker
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.stepTracker.subTitle}
    #Texto StepTracker 
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.stepTracker.paragraph}

    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.classMode.title}    ${SPACE}
    #Title ClassMode
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.classMode.title}
    #Sub-title ClassMode
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.classMode.subTitle}
    #Texto ClassMode 
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.classMode.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.sosAlerts.title}    ${SPACE}
    #Title SOSAlerts
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.sosAlerts.title}
    #Sub-title SOSAlerts
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.sosAlerts.subTitle}
    #Texto SOSAlerts 
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.sosAlerts.paragraph}

    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Title Camera
    Validate content, JSON    id=${DIC_CAROUSEL.camera.title}    ${DIC_CAROUSEL.camera.title}
    #Sub-title Camera
    Validate content, JSON    id=${DIC_CAROUSEL.camera.title}_subTitle    ${DIC_CAROUSEL.camera.subTitle}
    #Texto Camera
    Validate content, JSON    id=${DIC_CAROUSEL.camera.title}_paragraph    ${DIC_CAROUSEL.camera.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.videoCalling.title}    ${SPACE}
    #Title VideoCalling
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.videoCalling.title}
    #Sub-title VideoCalling
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.videoCalling.subTitle}
    #Texto VideoCalling
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.videoCalling.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.liveGPS.title}    ${SPACE}
    #Title liveGPS
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.liveGPS.title}
    #Sub-title liveGPS
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.liveGPS.subTitle}
    #Texto liveGPS
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.liveGPS.paragraph}
    
    #Clicar no botão para avançar a animação do carrocel
    Click    xpath=//span[contains(@class,'carousel-control-next-icon')]
    Sleep    2s
    #Remover o ESPACE para buscar o id corretamente
    ${id_elemnt}	  Remove String	  ${DIC_CAROUSEL.waterproof.title}    ${SPACE}
    #Title Waterproof
    Validate content, JSON    id=${id_elemnt}    ${DIC_CAROUSEL.waterproof.title}
    #Sub-title Waterproof
    Validate content, JSON    id=${id_elemnt}_subTitle    ${DIC_CAROUSEL.waterproof.subTitle}
    #Texto Waterproof
    Validate content, JSON    id=${id_elemnt}_paragraph    ${DIC_CAROUSEL.waterproof.paragraph}

Validate component - Disclaimer
    [Arguments]    ${locale}

    &{DIC_DISCLAIMER}    Get component to Dic, JSON    ${locale}    Disclaimer
    Set Global Variable    ${DIC_DISCLAIMER}

    [Documentation]    Validação do Texto presente no elemento Disclaimer - Content HomePage

    Search element    xpath=//h3[contains(@id,'DaysReturnTitle')]/../../..
    Log    Dicionário: ${DIC_DISCLAIMER}
    Sleep    2s
    #Title 30 Days Return
    Validate content, JSON    id=DaysReturnTitle    ${DIC_DISCLAIMER["returnTitle"]}
    #Text Changed your mind? You can return your
    Validate content, JSON    id=DaysReturnParagraph    ${DIC_DISCLAIMER["returnText"]}
    #Title 12-Month Fault Warranty
    Validate content, JSON    id=WarrantyTitle    ${DIC_DISCLAIMER["warrantyTitle"]}
    #Text If your Moochies develops a hardware or
    Validate content, JSON    id=WarrantyParagraph    ${DIC_DISCLAIMER["warrantyText"]}
    #Title 24/7 Live Online Support
    Validate content, JSON    id=LiveSupportTitle    ${DIC_DISCLAIMER["supportTitle"]}
    #Text Our customer service team is here for you 24
    Validate content, JSON    id=LiveSupportParagraph    ${DIC_DISCLAIMER["supportText"]}

Validate component - DontLetTheRain
    [Arguments]    ${locale}

    &{DIC_DONTLET}    Get component to Dic, JSON    ${locale}    DontLetTheRain
    Set Global Variable    ${DIC_DONTLET}

    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage

    Search element    xpath=//h1[contains(@id,'DontLetRainTitle')]/../..
    Log    Dicionário: ${DIC_DONTLET}
    Sleep    2s
    #Title Don't Let the Rain
    Validate content, JSON    id=DontLetRainTitle    ${DIC_DONTLET["title_1"]}
    #Title Get You Down
    Validate content, JSON    id=DontLetRainTitle    ${DIC_DONTLET["title_2"]}
    #Sub-Title Never worry about rain,
    Validate content, JSON    id=DontLetRainSubtitle    ${DIC_DONTLET["subTitle_1"]}
    #Sub-Title sweat or splashes
    Validate content, JSON    id=DontLetRainSubtitle    ${DIC_DONTLET["subTitle_1"]}
    #Title Card1 - Better Than a Mobile Phone
    Validate content, JSON    id=DontLetRainParagraph    ${DIC_DONTLET["paragraph"]}
Validate component - FeaturesAnimation
    [Arguments]    ${locale}
    
    &{DIC_FEATURESANIMATION}    Get component to Dic, JSON    ${locale}    FeaturesAnimation
    Set Global Variable    ${DIC_FEATURESANIMATION}

    [Documentation]    Validação do Texto presente no elemento Features Animation - Content HomePage
    Search element    xpath=//div[contains(@class,'sc-5598e7a6-2 jxusFE')]/../..
    Log    Dicionário: ${DIC_FEATURESANIMATION}

    Sleep    3s
    #Title Card1 - Voice Calling
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[0].title}
    #Title Card1 - Voice calling, keeping you in touch whenever you need.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[0].description}

    Click    xpath=//img[contains(@src,'icon.cb0cc157.png&w=128&q=75')]
    Sleep    3s
    #Title Card2 - Video Calling
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[1].title}
    #Title Card2 - Video calling between the Moochies Phone Watch and your smartphone.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[1].description}

    Click    xpath=//img[contains(@src,'icon.93957551.png&w=128&q=75')]
    Sleep    3s
    #Title Card3 - Messaging
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[2].title}
    #Title Card3 - Text and voice messaging to the Moochies Phone Watch.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[2].description}

    Click    xpath=//img[contains(@src,'icon.2e145117.png&w=128&q=75')]
    Sleep    3s
    #Title Card4 - Live GPS Location
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[3].title}
    #Title Card4 - See where they are, anywhere in the world.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[3].description}

    Click    xpath=//img[contains(@src,'icon.a6271e43.png&w=128&q=75')]
    Sleep    3s
    #Title Card5 - Safe Zones
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[4].title}
    #Title Card5 - Set safe zones and get alerts when your child leaves the area.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[4].description}

    Click    xpath=//img[contains(@src,'icon.d8841053.png&w=128&q=75')]
    Sleep    3s
    #Title Card6 - Class Mode
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[5].title}
    #Title Card6 - Disables all features besides SOS alerts so they can focus on their education.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[5].description}

    Click    xpath=//img[contains(@src,'icon.fa26b793.png&w=128&q=75')]
    Sleep    3s
    #Title Card7 - SOS Alerts
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[6].title}
    #Title Card7 - Your child can let you know when they're in trouble, a press of a button sends you a live GPS location and thirty second audio recording.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[6].description}

    Click    xpath=//img[contains(@src,'icon.0c4282fe.png&w=128&q=75')]
    Sleep    3s
    #Title Card8 - Camera
    Validate content, JSON    id=FeaturesVideoTitle    ${DIC_FEATURESANIMATION.featureText[7].title}
    #Title Card8 - Front facing camera to send selfies and snap the happy moments.
    Validate content, JSON    id=FeaturesVideoParagraph    ${DIC_FEATURESANIMATION.featureText[7].description}

Validate component - GetSocial
    [Arguments]    ${locale}

    &{DIC_GETSOCIAL}    Get component to Dic, JSON    ${locale}    GetSocial
    Set Global Variable    ${DIC_GETSOCIAL}

    Search element    xpath=//div[contains(@id,'GetSocialTitle')]/..
    Log    Dicionário: ${DIC_GETSOCIAL}
    Sleep    2s
    #Title Get Social With Moochies
    Validate content, JSON    id=GetSocialTitle    ${DIC_GETSOCIAL["title"]}

Validate component - MakeYourMoochies
    [Arguments]    ${locale}
    
    &{DIC_MAKEYOURMOOCHIES}    Get component to Dic, JSON    ${locale}    MakeYourMoochies
    Set Global Variable    ${DIC_MAKEYOURMOOCHIES}

    Search element    xpath=//h1[contains(@id,'YourMoochiesTitle')]/../..
    Log    Dicionário: ${DIC_MAKEYOURMOOCHIES}
    Sleep    2s
    #Title Make Your Moochies Your Own
    Validate content, JSON    id=YourMoochiesTitle    ${DIC_MAKEYOURMOOCHIES["title"]}
    #Text Every child is unique, with their own style, personality and tastes...
    Validate content, JSON    id=YourMoochiesParagraph    ${DIC_MAKEYOURMOOCHIES["paragraph"]}
    #Link
    Validate content, JSON    id=YourMoochiesLink    ${DIC_MAKEYOURMOOCHIES["link"]}

Validate component - NoLockIn
    [Arguments]    ${locale}
    
    &{DIC_NOLOCKIN}    Get component to Dic, JSON    ${locale}    NoLockIn
    Set Global Variable    ${DIC_NOLOCKIN}

    Search element    xpath=//h1[contains(@id,'NoLockInTitle')]/../..
    Log    Dicionário: ${DIC_NOLOCKIN}
    Sleep    2s
    #Title No Lock-In Contract SIM Plans
    Validate content, JSON    id=NoLockInTitle    ${DIC_NOLOCKIN["title"]}
    #Text No lock-in contracts, no hidden fees, ever! That's our promise to you....
    Validate content, JSON    id=NoLockInParagraph1    ${DIC_NOLOCKIN["paragraph_1"]}
    #text Paid monthly, you can cancel or change your plan at any time ......
    Validate content, JSON    id=NoLockInParagraph2    ${DIC_NOLOCKIN["paragraph_2"]}
    #link
    Validate content, JSON    id=NoLockInLink    ${DIC_NOLOCKIN["link"]}

Validate component - Icones
    [Arguments]    ${locale}
        
    &{DIC_ICONES}    Get component to Dic, JSON    ${locale}    Icones
    Set Global Variable    ${DIC_ICONES}

    Search element    xpath=//h2[contains(@id,'CommentsTitle')]/../../..
    Log    Dicionário: ${DIC_ICONES}
    Sleep    2s
    #Title Make Your Moochies Your Own
    Validate content, JSON    id=CommentsTitle    ${DIC_ICONES["CommentsTitle"]}
    #Text Every child is unique, with their own style, personality and tastes...
    Validate content, JSON    id=CommentsParagraph    ${DIC_ICONES["CommentsP"]}
    #Link
    Validate content, JSON    id=MoochiesTitle    ${DIC_ICONES["moochiesTitle"]}
    #Link
    Validate content, JSON    id=MoochiesParagraph    ${DIC_ICONES["moochiesP"]}
    #Text Every child is unique, with their own style, personality and tastes...
    Validate content, JSON    id=WorldTitle    ${DIC_ICONES["worldiconTitle"]}
    #Link
    Validate content, JSON    id=WorldParagraph    ${DIC_ICONES["worldiconP"]}

Validate component - AllInOne
    [Arguments]    ${locale}
    
    &{DIC_ALLINONE}    Get component to Dic, JSON    ${locale}    AllInOne
    Set Global Variable    ${DIC_ALLINONE}

    Search element    xpath=//h1[contains(@id,'AllInOneTitle')]/../../../..
    Log    Dicionário: ${DIC_ALLINONE}
    Sleep    2s
    #Paragraph With GPS tracking so you’ll know where they are....
    Validate content, JSON    id=AllInOneTitle    ${DIC_ALLINONE["title"]}
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AllInOneParagraph1  ${DIC_ALLINONE["paragraph_1"]}  
    #Paragraph Every child deserves a childhood of fun
    Validate content, JSON    id=AllInOneParagraph2  ${DIC_ALLINONE["paragraph_2"]}  

Validate component - InTheBox
    [Arguments]    ${locale}    ${arg_product}
    
    Search element    xpath=//h1[contains(@id,'InTheBoxTitle_Desktop')]/../..
    Sleep    2s
    IF    "${arg_product}" == "Connect"
        
        &{DIC_INTHEBOX}    Get component to Dic, JSON    ${locale}    InTheBox
        Set Global Variable    ${DIC_INTHEBOX}
        
        Log    Dicionário: ${DIC_INTHEBOX}

        #Title 30 Days Return
        Validate content, JSON    id=InTheBoxTitle_Desktop    ${DIC_INTHEBOX["title"]}
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
    
    ELSE IF   "${arg_product}" == "Odyssey"

        &{DIC_INTHEBOX}    Get component to Dic, JSON    ${locale}    InTheBoxOdyssey
        Set Global Variable    ${DIC_INTHEBOX}
        
        Log    Dicionário: ${DIC_INTHEBOX}
        
        #Title 30 Days Return
        Validate content, JSON    id=InTheBoxTitle_Desktop    ${DIC_INTHEBOX["title"]}
        #Text Changed your mind? You can return your
        Validate content, JSON    id=connect    ${DIC_INTHEBOX.card01.textTop}
        #Title 12-Month Fault Warranty
        Validate content, JSON    id=connect    ${DIC_INTHEBOX.card01.textBottom}
        #Text If your Moochies develops a hardware or
        Validate content, JSON    id=standard    ${DIC_INTHEBOX.card02.textTop}
        #Title 24/7 Live Online Support
        Validate content, JSON    id=standard       ${DIC_INTHEBOX.card02.textBottom}    
         #Text If your Moochies develops a hardware or
        Validate content, JSON    id=charging    ${DIC_INTHEBOX.card04.textTop} 
    END
    
Validate component - WhyChooseMoochies
    [Arguments]    ${locale}
     
    &{DIC_WHYCHOOSE}    Get component to Dic, JSON    ${locale}    WhyChooseMoochies
    Set Global Variable    ${DIC_WHYCHOOSE}  

    Search element    xpath=//h1[contains(@id,'WhyChooseMoochiesTitle_desktop')]/../..
    Log    Dicionário: ${DIC_WHYCHOOSE}
    Sleep    2s
    #Title No Lock-In Contract SIM Plans
    Validate content, JSON    id=WhyChooseMoochiesTitle_desktop    ${DIC_WHYCHOOSE["title"]}
    #Text No lock-in contracts, no hidden fees, ever! That's our promise to you....
    Validate content, JSON    id=CommentsParagraph_desktop    ${DIC_WHYCHOOSE.card01.paragraph}
    #text Paid monthly, you can cancel or change your plan at any time ......
    Validate content, JSON    id=MoochiesParagraph_desktop    ${DIC_WHYCHOOSE.card02.paragraph}
    #link
    Validate content, JSON    id=ToughParagraph_desktop    ${DIC_WHYCHOOSE.card03.paragraph}
    #link
    Validate content, JSON    id=FocusParagraph_desktop    ${DIC_WHYCHOOSE.card04.paragraph}
    
Validate component - Header
    [Arguments]    ${locale}

    &{DIC_HEADER}    Get component to Dic, JSON    ${locale}    Header
    Set Global Variable    ${DIC_HEADER}

    Search element    xpath=//span[@id='HeaderTitle']/../../..
    Log    Dicionário: ${DIC_HEADER}
    Sleep    2s
    #Title YOUR KID'S FIRST
    Validate content, JSON    id=HeaderTitle    ${DIC_HEADER["headerTitle1"]}
    #Title MOBILE PHONE
    Validate content, JSON    id=HeaderTitle    ${DIC_HEADER["headerTitle2"]}
    #Title GIVING PARENTS PEACE OF MIND
    Validate content, JSON    id=HeaderSubTitle    ${DIC_HEADER["headerSubtitle"]}
