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


Atualizar Um Artigo
    [Arguments]     ${payload}    ${id_artigo}
    
    # &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        PUT 
        ...            ${API_URL}/article/${id_artigo}
        ...            json=${payload}
        # ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}


Remover Um Artigo
    [Arguments]     ${id_article}
    
    # &{tokenzinho}        Create Dictionary        Authorization=${token}

    ${response}        DELETE 
        ...            ${API_URL}/article/${id_article}
        # ...            headers=${tokenzinho}
        ...            expected_status=any

    
    

    [return]        ${response}