*Settings*
Documentation    Atualizar  Usuario


Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot


# Suite Setup    Set Client Key    

*** Variables ***
${id_usuario_para_atualizar}    a882cdc0-040e-467f-9fb7-2acef76243cf


*Test Cases*
Cenario 1 - Deve Atualizar Um Usuario Com Dados Válidos
    
    
    ${usuario_atualizacao}            usuario_atualizacao
    ${response}             Atualizar Um Usuario       ${usuario_atualizacao}    ${id_usuario_para_atualizar}          


    Status Should Be    200

Cenario 2 - Deve Atualizar Um Usuario Com Dados Inválidos

    ${usuario_atualizacao_invalido}               usuario_atualizacao_invalido
    ${response}         Atualizar Um Usuario    ${usuario_atualizacao_invalido}    ${id_usuario_para_atualizar} 


    Status Should Be    400

Cenario 3 - Deve Atualizar Um Usuario Com Dados Já Registrados

    ${usuario}          Usuario
    ${response}         Atualizar Um Usuario   ${usuario}    ${id_usuario_para_atualizar} 


    Status Should Be    400


