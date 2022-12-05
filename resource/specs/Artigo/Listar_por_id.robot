
*** Settings ***
Documentation        Listar artigo por uid

Resource    ../../routes/Artigo.robot
Library    ../../factories/Artigo.py

   

*** Test Cases ***
Cenario 1 - Listar artigo por UID

    ${artigo}           artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201
    
    ${response}            Listar artigo Pelo Id    ${response.json()['uuid']}  
    Status Should Be       200

    ${response}         Remover Um Artigo     ${response.json()['uuid']}


    Status Should Be    204
