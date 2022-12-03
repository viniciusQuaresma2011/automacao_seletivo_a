
*** Settings ***
Documentation        Listar usuario por ID

Resource    ../../routes/Usuario.robot
Library    ../../factories/Usuario.py

   

*** Test Cases ***
Cenario 1 - Listar usuário por ID

    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201
    
    ${response}            Listar Usuario Pelo Id    ${response.json()['uuid']}  
    Status Should Be       200

    

    ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204
