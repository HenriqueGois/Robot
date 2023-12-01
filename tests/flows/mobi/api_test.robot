***Settings***
Documentation   Tests api 
Resource     ../../../resources/base.robot
Suite Setup     Connect API

**Variables***
${API_URL}      https://website-backend-homolog.onrender.com/api/

***Keywords***
Connect API
    Create Session      TesteAPI     ${API_URL}

# Add user
#     &{teste}    Create Dictionary        content-type=application/json
#     ${RESPOSTA}  POST On Session  TesteAPI  preRegister
#     ...    data={"register": {"Name": "Henrique ","Email": "Henrique.Gois@gmail.com","Site": "odyssey.com.br"}}
#     ...    headers=${teste}
#     Log To Console    RESPOSTA TEXT: ${RESPOSTA.text}
#     Log To Console    RESPOSTA: ${RESPOSTA}

Atualizar user
    &{teste}    Create Dictionary        content-type=application/json
    ${RESPOSTA}  PUT On Session  TesteAPI  preRegister
    ...    data={"register": {"Name": "Henrique","Email": "Henrique.Teste@gmail.com","Site": "odyssey.teste.qa.2.com.br"}}
    ...    headers=${teste}
    Log To Console    RESPOSTA TEXT: ${RESPOSTA.text}
    Log To Console    RESPOSTA: ${RESPOSTA}

# Check status code
#     [Arguments]        ${status_esperado}
#     Should Be Equal As Strings    ${RESPOSTA.status_code}    ${status_esperado}
#     ${RESPOSTA}  GET On Session  TesteAPI  preRegister
#      Log To Console    ${RESPOSTA.status_code}

# Search all books
#     ${RESPOSTA}  GET On Session  FakeAPI  v1/Books
#     Log To Console        Funcionou a lista 
#     # Log To Console    ${RESPOSTA.text}
#     Set Test Variable    ${RESPOSTA}


# Search book "${id}"
#     ${RESPOSTA}  GET On Session  FakeAPI  v1/Books/${id}
#     Log To Console    ${RESPOSTA.text}


# Check reason
#     [Arguments]        ${reason_esperado}
#     Should Be Equal As Strings    ${RESPOSTA.reason}    ${reason_esperado}

# Check 200 books
#     Length Should Be    ${RESPOSTA.json()}    200



*** Test Cases ***
Teste POST
    Atualizar user

    # Add user
    # Check status code    200