***Settings***
Documentation    Remoção De Usuário



Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot

# Suite Setup    Set Client Key


*** Variables ***
${id_usuario}            6176a689-ea8b-4a12-849d-2f5ea2199b24


***Test Cases***
Cenário 1 - Remocao de Usuário 
    
   
    ${response}         Remover Um Usuario      ${id_usuario} 


    Status Should Be    204

