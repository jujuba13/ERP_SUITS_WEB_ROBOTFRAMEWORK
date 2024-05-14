*** Settings ***
Resource    ../uitils/Settings.resource
Resource     ../Keywords/Login_ADMIN.resource
Resource     ../Variables/Acesso_URL_Login.resource
Resource     ../Variables/Elemento_Cadastro_usuario.resource
Resource     ../Variables/Elemento_Login.resource



*** Keywords ***
Abrir o navegado do browser
   Open Browser  url=${URL}    browser=${headlesschrome}

   Maximize Browser Window
   
Fechar o navegador do browser
   Close Browser

1.Acessar o login com ADMIN 
   
  Element Should Be Visible       locator=${Elemento_Input_Login}
  Input Text                       locator=${Elemento_Input_Login}     text=${LOGIN} 

   Wait Until Element Is Visible    locator=${Elemento_Input_Senha}
   Input Text                       locator=${Elemento_Input_Senha}    text=${SENHA}

   Wait Until Element Is Visible     locator=${Elemento_Button_Entrar} 
   Click Button                      locator=${Elemento_Button_Entrar} 

2.Verificar se esta logado como ADMIN com sucesso
  Sleep   2
  Element Should Be Visible    locator=${Elemento_Messege_QACoders} 
  Element Should Be Visible    locator=${Elemento_Button_Logout}  
 


3.Novo usuário com sucesso
 
    ${palavra_randomica}=    Generate Random String    length=50    chars=LETTERS
    ${palavra_randomica_email}=    Generate Random String    length=10    chars=\[LETTERS]\[NUMBERS]
    ${palavra_randomica_cpf}=     Generate Random String    length=11   chars=[NUMBERS]
    ${palavra_randomica}=    Convert To Lower Case    ${palavra_randomica}
    ${palavra_randomica_email}=    Convert To Lower Case    ${palavra_randomica_email}@gmail
    ${palavra_randomica_cpf}=   Convert To Lower Case     ${palavra_randomica_cpf}

    Set Test Variable    ${FULLNAME}      ${palavra_randomica}
    Log   ${FULLNAME}  
    Set Test Variable    ${EMAIL}      ${palavra_randomica_email}
    Log   ${EMAIL} 
    Set Test Variable    ${CPF}      ${palavra_randomica}
    Log   ${CPF} 
 
    Sleep    10
    Wait Until Element Is Visible    locator=${Elemento_Button_Cadastro} 
    Click Element    locator=${Elemento_Button_Cadastro} 

    Wait Until Element Is Visible    locator=${Elemento_Button_Usuario}  
    Click Element    locator=${Elemento_Button_Usuario}  

    Wait Until Element Is Visible    locator=${Elemento_Button_Novo_Usuario}
    Click Button    locator=${Elemento_Button_Novo_Usuario}

    Element Should Be Visible    locator=${Elemento_Input_Fullname}
    Click Element    locator=${Elemento_Input_Fullname}
    Input Text    locator=${Elemento_Input_Fullname}     text=Juliana França 
     
    Wait Until Element Is Visible    locator=${Elemento_Input_Mail}  
    Input Text    locator=${Elemento_Input_Mail}      text=${EMAIL} 

    Wait Until Element Is Visible    locator=${Elemento_Input_ProfileAcess}
    Input Text    locator=${Elemento_Input_ProfileAcess}    text="ADMIN"

    Wait Until Element Is Visible    locator=${Elemento_Input_CPF}
    Input Text    locator=${Elemento_Input_CPF}    text=${CPF} 

    Wait Until Element Is Visible    locator=${Elemento_Input_Password}
    Input Text    locator=${Elemento_Input_Password}    text=${SENHA}
    
    Wait Until Element Is Visible   locator=${Elemento_Input_Confirmar_Senha} 
    Input Text    locator=${Elemento_Input_Confirmar_Senha}     text=${SENHA}
  
    Wait Until Element Is Visible    locator=${Elemento_Button_Salvar} 
    Click Button    locator=${Elemento_Button_Salvar} 

#4.Verificar se o cadastro foi realizado com sucesso
  ##Element Should Be Visible    locator= 