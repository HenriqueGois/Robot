***Settings***
Documentation   Tests api 
Resource     ../../resources/base.robot
Suite Setup     Connect API

**Variables***
${API_URL}      https://website-backend-homolog.onrender.com/api/

***Keywords***
Connect API
    Create Session      TesteAPI     ${API_URL}

Add user
    &{teste}    Create Dictionary        content-type=application/json
    ${RESPOSTA}  POST On Session  TesteAPI  preRegister
    ...    data={"register": {"Name": "Henrique ","Email": "Henrique.Gois@gmail.com","Site": "odyssey.com.br"}}
    ...    headers=${teste}
    Log To Console    RESPOSTA TEXT: ${RESPOSTA.text}
    Log To Console    RESPOSTA: ${RESPOSTA}

Atualizar user
    &{teste}    Create Dictionary        content-type=application/json
    ${RESPOSTA}  PUT On Session  TesteAPI  preRegister
    ...    data={"register": {"Name": "Henrique","Email": "Henrique.Teste@gmail.com","Site": "odyssey.teste.qa.2.com.br"}}
    ...    headers=${teste}
    Log To Console    RESPOSTA TEXT: ${RESPOSTA.text}
    Log To Console    RESPOSTA: ${RESPOSTA}

*** Test Cases ***
Teste POST
    Add user
    Atualizar user


