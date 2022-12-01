*Settings*
Documentation           inicio

Library         RequestsLibrary


Library        JSONLibrary
Library        Collections


*Variables*
${API_URL}          https://processoseletivo.audax.mobi/


*Keywords*

# Cadastrar Um Usuario
#     [Arguments]     ${payload}
    
#     # &{tokenzinho}        Create Dictionary        Authorization=${token}

#     ${response}        POST 
#         ...            ${API_URL}/user
#         ...            json=${payload}
#         # ...            headers=${tokenzinho}
#         ...            expected_status=any

    
    

#     [return]        ${response}