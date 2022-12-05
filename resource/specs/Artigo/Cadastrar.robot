***Settings***
Documentation    Cadastro De Artigos



Library    ../../factories/Artigo.py
Resource    ../../routes/Artigo.robot



***Test Cases***
############### Artigo Válido ################
Cenário 1 - Cadastro de Artigo Válido
    
    
    ${artigo}          artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201

    ${response}         Remover Um Artigo     ${response.json()['uuid']}


    Status Should Be    204




############### Artigo com Titulo Válido ################
Cenário 1 - Cadastro de Artigo com o TITULO Válido
    
    
    ${artigo}          artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201

    ${response}         Remover Um Artigo     ${response.json()['uuid']}


    Status Should Be    204



Cenário 2 - Cadastro de Artigo com o TITULO Inválido
    
    
    ${artigo}          artigo_titulo_invalido
    ${response}         Cadastrar Um Artigo       ${artigo} 

    ${status_code_STRING}   Convert To String  ${response.status_code} 

    # IF  ${status_code_STRING} == 400
    #     Status Should Be    400
    #     Log     FALHOU AO PERMITIR CADASTRAR COM TITULO INVÀLIDO
    # END

    # IF  ${status_code_STRING} == 201

    #     ${response}         Remover Um Artigo     ${response.json()['uuid']}


    #     Status Should Be    204     
    # END
    Status Should Be    400

    Run Keyword If ${status_code_STRING} == 201  Remover Artigo Cadastrado


Cenário 3 - Cadastro de Artigo com o TITULO nulo
    
    
    ${artigo}          artigo_titulo_nulo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    #Status Should Be    400

    Should Be Equal    ${response.json()['error']['details']['title']}   Title must not be empty

    ${response}         Remover Um Artigo     ${response.json()['uuid']}


    Status Should Be    204



**Keywords**
Remover Artigo Cadastrado
    ${response}         Remover Um Artigo     ${response.json()['uuid']}


    Status Should Be    204