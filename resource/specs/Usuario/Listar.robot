*** Settings ***
Documentation        Listar usuarios

Resource    ../../routes/Usuario.robot
Library    ../../factories/Usuario.py

*** Variables ***
# ${id_usuario}     Y94Rq18QsfeCzusk      

*** Test Cases ***
Cenario 1 - Listar usuários cadastrados
    
    ${response}            Listar Usuarios cadastrados     
    Status Should Be       200
