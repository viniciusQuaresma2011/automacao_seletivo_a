
*Settings*
Documentation           Operacoes com Usuarios

Resource         ../base/Base.robot


*Variables*
${API_URL}          https://processoseletivo.audax.mobi



***Keywords***
Cadastrar Um Usuario
    [Arguments]     ${payload}
    
    # &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        POST 
        ...            ${API_URL}/user
        ...            json=${payload}
        # ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}


Listar Usuarios cadastrados
    [Arguments]     
    
    ${response}    GET
        ...        ${API_URL}/user
    [return]       ${response} 


Listar Usuario Pelo Id
    [Arguments]     ${payload}
    
    ${response}    GET
        ...        ${API_URL}/user/${payload}
    [return]       ${response}


Atualizar Um Usuario
    [Arguments]     ${payload}    ${id_usuario}
    
    # &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        PUT 
        ...            ${API_URL}/user/${id_usuario}
        ...            json=${payload}
        # ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}