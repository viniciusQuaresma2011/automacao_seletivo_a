*Settings*
Documentation    Atualizar  Artigo


Library    ../../factories/Artigo.py
Resource    ../../routes/Artigo.robot



*Test Cases*
Cenario 1 - Deve Atualizar Um Artigo Com Dados Válidos

    ${artigo}          artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201
    
    
    ${artigo_atualizacao}            artigo_atualizacao
    ${response}             Atualizar Um Artigo       ${artigo_atualizacao}    ${response.json()['uuid']}          


    Status Should Be    200

    ${response}         Remover Um Artigo      ${response.json()['uuid']}


    Status Should Be    204

Cenario 2 - Deve Atualizar Um Artigo Com o Dados Inválidos
    ${artigo}          Artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201

    ${artigo_atualizacao_invalido}               artigo_atualizacao_invalido
    ${response}         Atualizar Um Artigo    ${artigo_atualizacao_invalido}    ${response.json()['uuid']}  


    Status Should Be    400

Cenario 3 - Deve Atualizar Um Artigo Com Dados Nulos

    ${artigo}          Artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201

    ${artigo_atualizacao_nulo}          artigo_atualizacao_nulo
    ${response}         Atualizar Um Artigo   ${artigo_atualizacao_nulo}    ${response.json()['uuid']} 


    Status Should Be    400

     ${response}         Remover Um Artigo      ${response.json()['uuid']}


    Status Should Be    204


