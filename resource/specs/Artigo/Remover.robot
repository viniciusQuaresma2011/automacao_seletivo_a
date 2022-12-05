***Settings***
Documentation    Remoção De Artigo


Library    ../../factories/Artigo.py
Resource    ../../routes/Artigo.robot



***Test Cases***
Cenário 1 - Remocao de Artigo 
    ${artigo}          artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201
   
    ${response}         Remover Um Artigo     ${response.json()['uuid']}


    Status Should Be    204

