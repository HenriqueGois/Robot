*** Settings ***
Documentation       Keywords to Internationalization.

Resource            ../../resources/base.robot


*** Variables ***
&{dict_menulinks}
&{jason_test_text}

${links}
${jason_test_linkname}
${jason_test_linkPath}
${jason_test_testID}

@{comp}

${i}                        0
${i_inner}                  0


# ${jason_get_component}


*** Keywords ***
### JSON KEYWORDS #####################################################################################################################################################################################################################################################################################################################################################################
Get component to test mass, JSON
    ${file}    Load JSON From File    ${EXECDIR}/resources/fixtures/components_to_test.json
     FOR    ${components}    IN    @{file["components"]}
        Append To List	    ${comp}    ${components}
        ${i}    Evaluate    ${i} + 1
     END 
    [Return]        ${comp}
    ${i}    Evaluate    0

Validate content, JSON
    [Arguments]                    ${id_element}        ${dic_key}
    Log    Localizador: ${id_element} | Conteudo: ${dic_key}     level=INFO
    Wait For Elements State        ${id_element}        attached    15
    Get Element States             ${id_element}        validate    value | visible
    Get Text                       ${id_element}   *=   ${dic_key}
    Scroll To Element              ${id_element}
    Take Screenshot                mask=${id_element}        
    Take Screenshot                selector=${id_element}    omitBackground=true

Validate content placeholder, JSON
    [Arguments]                    ${id_element}        ${dic_key}
    Wait For Elements State        ${id_element}        attached    15
    Get Element States             ${id_element}        validate    value | visible
    Get Attribute   ${id_element}    placeholder      ==     ${dic_key} 
    Scroll To Element              ${id_element}
    Log    Localizador: ${id_element} | Conteudo: ${dic_key}
    Take Screenshot                mask=${id_element}        
    Take Screenshot                selector=${id_element}    omitBackground=true
 
Search element
    [Arguments]                    ${id_element}
    Scroll To Element              ${id_element}
    Log     Component a ser validado: 
    Take Screenshot                selector=${id_element}    omitBackground=true        

Get component to Dic, Links, JSON
    [Arguments]    ${arg_locale}    ${component_name}    
    ${file}    Load JSON From File
    ...    C:/Moochies-WebTests/kids-website/components/__Contents/${component_name}.content.json
    Log    ${file}
    # IF    "${component_name}" == "MenuLinks" or "${component_name}" == "FooterLinks"
        FOR    ${links}    IN    @{file["links"]}
            IF    "${links["locale"]}" == "${arg_locale}"
                IF    "${links["linkPath"]}" == "False"
                    ${jason_test_text}      Set Variable    ${links["linkName"]}
                    ${jason_test_testID}    Set Variable    ${links["testID"]}
                    Set To Dictionary    ${dict_menulinks}   ${jason_test_testID}=${jason_test_text}
                    FOR    ${inner_Links}    IN    @{links["innerLinks"]}
                        ${jason_test_linkname}       Set Variable    ${inner_Links["linkName"]}
                        ${jason_test_linkPath}       Set Variable    ${inner_Links["linkPath"]}
                        Set To Dictionary    ${dict_menulinks}   ${jason_test_linkPath}=${jason_test_linkname}
                        ${i_inner}    Evaluate    ${i_inner} + 1
                    END
                    ${i_inner}    Evaluate    0
                ELSE
                    ${jason_test_linkname}       Set Variable    ${links["linkName"]}
                    ${jason_test_linkPath}       Set Variable    ${links["linkPath"]}
                    Set To Dictionary    ${dict_menulinks}   ${jason_test_linkPath}=${jason_test_linkname}
                END
                Log    ${dict_menulinks}
            END
            ${i}    Evaluate    ${i} + 1
        END
        RETURN    ${dict_menulinks}
        
    # END
Get component to Dic, JSON
    [Arguments]    ${arg_locale}    ${arg_component}
    ${file}    Load JSON From File
    ...    C:/Moochies-WebTests/kids-website/components/__Contents/${arg_component}.content.json
    ${i}    Evaluate  0        
    FOR    ${texts}    IN    @{file["texts"]}
        IF    "${texts["locale"]}" == "${arg_locale}"
            ${jason_test_text}     Set Variable    ${texts}
            Log         ${jason_test_text} 
            Log      Locale${jason_test_text["locale"]}
        END
    ${i}    Evaluate    ${i} + 1
    END
    RETURN    ${jason_test_text}


# MOBILE
Get component to Dic, Links, JSON - Mobile
    [Arguments]    ${arg_locale}    ${component_name}    
    ${file}    Load JSON From File
    ...    C:/Moochies-WebTests/kids-website/components/__Contents/${component_name}.content.json
    Log    ${file}
    # IF    "${component_name}" == "MenuLinks" or "${component_name}" == "FooterLinks"
        FOR    ${links}    IN    @{file["links"]}
            IF    "${links["locale"]}" == "${arg_locale}"

                    ${jason_test_text}      Set Variable    ${links["linkName"]}
                    ${jason_test_testID}    Set Variable    ${links["testID"]}
                    Set To Dictionary    ${dict_menulinks}   ${jason_test_testID}=${jason_test_text}
                    FOR    ${inner_Links}    IN    @{links["innerLinks"]}
                        ${jason_test_linkname}       Set Variable    ${inner_Links["linkName"]}
                        ${jason_test_linkPath}       Set Variable    ${inner_Links["linkPath"]}
                        Set To Dictionary    ${dict_menulinks}   ${jason_test_linkPath}=${jason_test_linkname}
                        ${i_inner}    Evaluate    ${i_inner} + 1
                    END
                    ${i_inner}    Evaluate    0
                Log    ${dict_menulinks}
            END
            ${i}    Evaluate    ${i} + 1
        END
        RETURN    ${dict_menulinks}