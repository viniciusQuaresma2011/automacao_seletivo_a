***Settings***
Documentation    Cadastro De Usuarios



Library    ../../factories/Usuario.py
Resource    ../../routes/Usuario.robot



***Test Cases***
Cenário 1 - Cadastro de Usuario 
    
    
    ${usuario}          Usuario
    ${response}         Cadastrar Um Usuario       ${usuario} 


    Status Should Be    201