***Settings***
Documentation   Tests HomePage Sanbox Moochies

Resource     ../../resources/base_desk.robot

**Test Cases***

Validação funcionamento da Home page 
    Access Sandbox  en-GB
    Close PopUp Change Country. Any 
    Validate page, Any
    Validate page, Any


Validate MenuBar About, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    About
    Validate dropdown MenuBar, Navigation
    Sleep   1s 

Validate MenuBar About submenu About, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    About
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation    About 
    Validate page, About
    Sleep   1s 

Validate MenuBar About submenu Team, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    About
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation    Team 
    Validate page, About
    Sleep   1s 

Validate MenuBar About submenu News, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    About
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation    News 
    Sleep   1s 
#__________________________________________________________________________________
    
Validate MenuBar Products, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Products
    Validate dropdown MenuBar, Navigation
    Sleep   1s 

Validate MenuBar Products submenu Phone Watches, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Products
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Phone Watches
    Validate page, PhoneWatches
    Sleep   1s 

Validate MenuBar Products submenu Moochies Connect, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Products
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Moochies Connect
    Validate page, MoochiesConnect
    Sleep   1s 

Validate MenuBar Products submenu Straps, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Products
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Straps
    Validate page, Strap
    Sleep   1s 

Validate MenuBar Products submenu Accessories, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Products
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Accessories
    Validate page, Accessories
    Sleep   1s 

Validate MenuBar Products submenu MyMoochies, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Products
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  MyMoochies
    Validate page, MyMoochiesApp
    Sleep   1s 

#__________________________________________________________________________________

Validação botão Shop da Home page
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Shop
    Validate page, Any
    Validate page, Shop
    Sleep   1s 

#__________________________________________________________________________________

Validate MenuBar SIM, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Sim
    Validate dropdown MenuBar, Navigation
    Sleep   1s 

Validate MenuBar SIM submenu Activate, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Sim
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Activate
    Validate page, ActivateSIM
    Sleep   1s 

Validate MenuBar SIM submenu Top Up, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Sim
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Top Up
    Validate page, TopUp
    Sleep   1s 

Validate MenuBar SIM submenu Sim Support, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Sim
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Sim Support
    Validate page, Contact
    Sleep   1s 

#__________________________________________________________________________________

Validate MenuBar WHY, Home
    # [Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Why
    Validate dropdown MenuBar, Navigation
    Sleep   1s 

Validate MenuBar WHY submenu Why Moochies, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Why
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Why Moochies
    Validate page, MyMoochies
    Sleep   1s 

Validate MenuBar WHY submenu Charity, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Why
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Charity
    Validate page, Charity  
    Sleep   1s 

Validate MenuBar WHY submenu Reviews, Home
    # [Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Why
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Reviews
    Sleep   1s 

Validate MenuBar WHY submenu Umboxing, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Why
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Unboxing
    Validate page, Unboxing
    Sleep   1s 

#__________________________________________________________________________________

Validate MenuBar Support, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Support
    Validate dropdown MenuBar, Navigation
    Sleep   1s 

Validate MenuBar Support submenu Customer, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Support
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Customer
    Validate page, Contact
    Sleep   1s 

Validate MenuBar Support submenu FAQ, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Support
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  FAQ
    Validate page, FAQ
    Sleep   1s 

Validate MenuBar Support submenu Contact, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on MenuBar, Navigation    Support
    Validate dropdown MenuBar, Navigation
    Click on submenu MenuBar, Navigation  Contact
    Validate page, Contact
    Sleep   1s 

#__________________________________________________________________________________

Validate empty Cart MenuBar, Home
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on Cart MenuBar, Navigation
    Validate empty Cart, Cart
    Sleep   1s 

Validate btn Shop Now, Home 
   # [Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on Shop Now, Home
    Close PopUp Change Country. Any
    Validate page, Any
    Validate page, Shop
    Sleep   1s

Validate btn Buy Now under table, Home
    #[Tags]      smoke
    Access Sandbox  en-GB
    Close PopUp Change Country. Any
    Click on Buy Now under table, Home
    Close PopUp Change Country. Any
    Validate page, Any
    Validate page, Shop
    Sleep   1s 