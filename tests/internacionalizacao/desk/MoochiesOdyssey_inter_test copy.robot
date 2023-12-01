*** Settings ***
Documentation       Testes de validação Internacionalização
Resource            ../../../resources/base.robot
Resource            ../components_base.robot
Test Setup          Accsses    ${locale_AU}    MoochiesOdyssey

*** Variables ***
${locale_AU}       en-AU

*** Test Cases ***
    
8.7-Vlidação Content - Carrocel
    [Documentation]    Validação do Texto presente no Carrocel - Content - HomePage
    [Tags]    content
    Validate component - Carrocel    ${locale_AU}

2-Validate content - AllInOne
    [Documentation]    Validação do Texto presente no elemento ContactHeader - Content ContactUs Page
    [Tags]    content
    Validate component - AllInOne    ${locale_AU}

8.6-Validate content - DontLetTheRain
    [Documentation]    Validação do Texto presente no elemento Dont Let The Rain - Content HomePage
    [Tags]    content
    Validate component - DontLetTheRain    ${locale_AU}

11-Validate content - MakeYourMoochies
   [Documentation]    Validação do Texto presente no elemento Make Your Moochies - Content HomePage
   [Tags]    content
    Validate component - MakeYourMoochies    ${locale_AU}

12-Validate content - NoLockIn
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - NoLockIn    ${locale_AU}

8.12-Validate content - InTheBox    
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - InTheBox    ${locale_AU}    Odyssey

12-Validate content - WhyChooseMoochies
   [Documentation]    Validação do Texto presente no elemento No Lock In - Content HomePage
   [Tags]    content
    Validate component - WhyChooseMoochies    ${locale_AU}

8.12-Validate content - Disclaimer
    [Documentation]    Validação do Texto presente no Carrocel - Content HomePage
    [Tags]    content
    Validate component - Disclaimer    ${locale_AU}

6-Validate content - GetSocial
    [Documentation]    Validação do Texto presente no elemento Get Social - Content HomePage
    [Tags]    content
    Validate component - GetSocial    ${locale_AU}