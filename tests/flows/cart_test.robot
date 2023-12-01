***Settings***
Documentation   Tests Cart Sanbox Moochies
Resource     ../../resources/base_desk.robot

***Variables***
${contexto_url}     en-GB

**Test Cases***
Validate Home 
    Timeout 20s
    Access Sandbox  ${contexto_url} 
    Validate page, Any

Validate add Connect Defoult in Cart
    [Tags]      smoke
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Click on Shop Now, Home
    Validate page, Shop
    Sleep   2s
    Click on Buy Now Connect, Shop
    Validate page, ShopConnect
    Sleep   10s
    Click on Add To Cart, ShopConnect
    Sleep   10s
    Validate products in Cart, Cart  Connect    Black
    Validate total products in Cart, Cart  1
    Sleep   5s
    Click on Proceed to Checkout, Cart
    Sleep   5s
    Validate page, Checkout
    Fill Contact Details, Checkout
    Sleep       2s
    Fill Postcode, Checkout     GL7 3NW
    Sleep       2s
    Click on Lookup, Checkout

    Sleep       1s
    
    Select Postcode, Checkout
    
    Sleep       1s
    
    Click on Proceed Payment, Checkout
    
    Sleep       2s

    Validate page, Payment
    Validate Watche, Payment    Connect     Black
    Click on Visa/Martercard, Payment
    
    Sleep       2s
    
    Validate field card, Payment
    Take Screenshot
    Sleep   2s

Validate add Connect with Acessories in Cart
    [Tags]      smoke
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Click on Shop Now, Home
    Validate page, Shop
    Sleep   2s
    Click on Buy Now Connect, Shop
    Validate page, ShopConnect
    Sleep   2s
    Select Color Connect, ShopConnect  White
    Sleep   2s
    Select Strap, ShopConnect  4
    Sleep   2s
    Select Extra Cable, ShopConnect
    Sleep   2s
    Select Screen Protector, ShopConnect
    Sleep   2s
    Click on Add To Cart, ShopConnect
    Sleep   10s
    Validate products in Cart, Cart  Connect    White
    Validate products in Cart, Cart  Straps  Snake
    Validate products in Cart, Cart  Extra Cable        a
    Validate products in Cart, Cart  Screen Protector       a
    Validate total products in Cart, Cart  4
    Sleep   2s
    Click on Proceed to Checkout, Cart
    Sleep   2s
    Validate page, Checkout
    
    Sleep      2s

    Fill Contact Details, Checkout

    Sleep       2s

    Fill Postcode, Checkout     GL7 3NW
    
    Sleep       2s

    Click on Lookup, Checkout

    Sleep       1s
    
    Select Postcode, Checkout
    
    Sleep       1s
    
    Click on Proceed Payment, Checkout
    
    Sleep       2s

    Validate page, Payment
    Validate Watche, Payment    Connect     White
    Validate Strap, Payment  Snake
    Click on Visa/Martercard, Payment
    
    Sleep       2s
    
    Validate field card, Payment
    Take Screenshot
    Sleep   2s


    Sleep   2s

Validate Accessories in Cart
    [Tags]      smoke
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Click on Shop Now, Home
    Validate page, Shop
    Click on Accessories, Shop
    Sleep   5s
    Validate page, AccessoriesShop
    Sleep   2s
    Select Strap, AccessoriesShop  4
    Sleep   2s
    Select Extra Cable, AccessoriesShop
    Sleep   2s
    Select Screen Protector, AccessoriesShop
    Sleep   2s
    Click on Add to Cart, AccessoriesShop
    Sleep   8s
    Validate products in Cart, Cart  Straps  Snake
    Validate products in Cart, Cart  Extra Cable        a
    Validate products in Cart, Cart  Screen Protector       a
    Validate total products in Cart, Cart  3
    Sleep   2s
    Click on Proceed to Checkout, Cart
    Sleep   2s
    Validate page, Checkout
    Sleep   2s

    Fill Contact Details, Checkout

    Sleep       2s

    Fill Postcode, Checkout     GL7 3NW
    
     Sleep       2s

    Click on Lookup, Checkout

    Sleep       1s
    
    Select Postcode, Checkout
    
    Sleep       1s

Validate btn + Cart
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Click on Shop Now, Home
    Validate page, Shop
    Click on Buy Now Connect, Shop
    Sleep   10s
    Validate page, ShopConnect
    Click on Add To Cart, ShopConnect
    Sleep   5s
    Validate total products in Cart, Cart  1
    Validate products in Cart, Cart  Connect    Black
    Sleep   10s
    Click on +, Cart
    Validate total products in Cart, Cart  2
    Sleep   2s

Validate btn - Cart
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Click on Shop Now, Home
    Validate page, Shop
    Click on Buy Now Connect, Shop
    Sleep   10s
    Validate page, ShopConnect
    Click on Add To Cart, ShopConnect
    Sleep   5s  
    Validate total products in Cart, Cart  1
    Validate products in Cart, Cart  Connect    Black
    Sleep   10s
    Click on -, Cart
    Validate empty Cart, Cart
    Sleep   2s

Validate btn Clear Shooping Cart
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Click on Shop Now, Home
    Validate page, Shop
    Click on Buy Now Connect, Shop
    Sleep   10s
    Validate page, ShopConnect
    Click on Add To Cart, ShopConnect
    Sleep   5s
    Validate total products in Cart, Cart  1
    Validate products in Cart, Cart  Connect    Black
    Sleep   10s
    Click on Clear Shooping, Cart
    Validate empty Cart, Cart
    Sleep   2s

Validate empty Cart
    Timeout 20s
    Access Sandbox  ${contexto_url}
    Validate page, Any
    Sleep   10s 
    Click on Cart MenuBar, Navigation
    Sleep   5s
    Validate empty Cart, Cart
    Take Screenshot

