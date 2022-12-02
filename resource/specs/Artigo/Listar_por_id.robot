
*** Settings ***
Documentation        Listar artigo por uid

Resource    ../../routes/Artigo.robot
Library    ../../factories/Artigo.py

# *** Variables ***
# ${id_usuario}     a882cdc0-040e-467f-9fb7-2acef76243cf      

*** Test Cases ***
Cenario 1 - Listar artigo por UID

    ${artigo}           artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201
    
    ${response}            Listar artigo Pelo Id    ${response.json()['uuid']}  
    Status Should Be       200
