***Settings***
Documentation    Cadastro De Artigos



Library    ../../factories/Artigo.py
Resource    ../../routes/Artigo.robot



***Test Cases***
Cenário 1 - Cadastro de Artigo Válido
    
    
    ${artigo}          artigo
    ${response}         Cadastrar Um Artigo       ${artigo} 


    Status Should Be    201