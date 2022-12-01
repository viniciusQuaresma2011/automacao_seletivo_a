
*** Settings ***
Documentation        Listar usuario por ID

Resource    ../../routes/Usuario.robot
Library    ../../factories/Usuario.py

*** Variables ***
${id_usuario}     a882cdc0-040e-467f-9fb7-2acef76243cf      

*** Test Cases ***
Cenario 1 - Listar usuário por ID
    
    ${response}            Listar Usuario Pelo Id    ${id_usuario}  
    Status Should Be       200
