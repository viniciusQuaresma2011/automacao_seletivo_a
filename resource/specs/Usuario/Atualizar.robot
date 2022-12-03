*Settings*
Documentation    Atualizar  Usuario


Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot



*Test Cases*
Cenario 1 - Deve Atualizar Um Usuario Com Dados Válidos

    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201
    
    
    ${usuario_atualizacao}            usuario_atualizacao
    ${response}             Atualizar Um Usuario       ${usuario_atualizacao}    ${response.json()['uuid']}          


    Status Should Be    200

    ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204

Cenario 2 - Deve Atualizar Um Usuario Com Dados Inválidos
    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201

    ${usuario_atualizacao_invalido}               usuario_atualizacao_invalido
    ${response}         Atualizar Um Usuario    ${usuario_atualizacao_invalido}    ${response.json()['uuid']}  


    Status Should Be    400

Cenario 3 - Deve Atualizar Um Usuario Com Dados Já Registrados

    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201

    ${usuario}          Usuario
    ${response}         Atualizar Um Usuario   ${usuario}    ${response.json()['uuid']} 


    Status Should Be    400

     ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204


