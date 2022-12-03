***Settings***
Documentation    Remoção De Usuário


Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot



***Test Cases***
Cenário 1 - Remocao de Usuário 
    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201
   
    ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204

