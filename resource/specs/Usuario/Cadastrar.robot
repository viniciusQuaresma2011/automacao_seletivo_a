***Settings***
Documentation    Cadastro De Usuarios


Library     JSONLibrary
Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot



***Test Cases***
######################### Cenários de testes com o campo USERNAME #######
Cenário 1 - Cadastro de Usuario com Username VÁLIDO
    
    
    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201

    ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204


Cenário 2 - Cadastro de Usuario com Username INVÁLIDO
    
    
    ${usuario}          usuario_username_invalido
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    400

    

Cenário 3 - Cadastro de Usuario com Username NULO
    
    
    ${usuario}          usuario_username_nulo
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    400

   



######################### Cenários de testes com o campo PASSWORD ###
Cenário 1 - Cadastro de Usuario com PASSWORD VÁLIDO
    
    
    ${usuario}          usuario_password
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201

    ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204


Cenário 2 - Cadastro de Usuario com PASSWORD INVÁLIDO
    
    
    ${usuario}          usuario_password_invalido
    ${response}         Cadastrar Um Usuario       ${usuario} 

    

    #Run Keyword If ${response.json()['status']} == '201' Remover Usuario Cadastrado

    Status Should Be Equal  400
    
    


Cenário 3 - Cadastro de Usuario com PASSWORD NULO
    
    
    ${usuario}          usuario_password_nulo
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Should Be Equal    ${response.json()['error']['details']['password']}   Password must not be empty

    Status Should Be    400



**Keywords**
Remover Usuario Cadastrado
    ${response}         Remover Um Usuario      ${response.json()['uuid']}


    Status Should Be    204
