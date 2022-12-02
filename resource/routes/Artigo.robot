*Settings*
Documentation           Operacoes com Artigos

Resource         ../base/Base.robot


*Variables*
${API_URL}          https://processoseletivo.audax.mobi



***Keywords***
Cadastrar Um Artigo
    [Arguments]     ${payload}
    
    # &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        POST 
        ...            ${API_URL}/article
        ...            json=${payload}
        # ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}

Listar artigos cadastrados
    [Arguments]     
    
    ${response}    GET
        ...        ${API_URL}/article
    [return]       ${response} 


Listar artigo Pelo Id
    [Arguments]     ${payload}
    
    ${response}    GET
        ...        ${API_URL}/article/${payload}
    [return]       ${response}
