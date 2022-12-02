*** Settings ***
Documentation        Listar artigos

Resource    ../../routes/Artigo.robot
Library    ../../factories/Artigo.py

*** Variables ***
# ${id_usuario}     Y94Rq18QsfeCzusk      

*** Test Cases ***
Cenario 1 - Listar artigos cadastrados
    
    ${response}            Listar artigos cadastrados     
    Status Should Be       200
