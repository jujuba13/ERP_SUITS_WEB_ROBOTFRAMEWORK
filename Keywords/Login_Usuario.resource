*** Settings ***
Resource      ../uitils/Settings.resource
Resource      ../Variables/Acesso_URL_Login.resource
Resource      ../Variables/Elemento_Login.resource

*** Keywords ***

Abrir o navegado
   Open Browser  url=${URL}    browser=${BROWSER}

   Maximize Browser Window
   
Fechar o navegador 
   Close Browser

5.Acessando login do usuário

  Element Should Be Visible       locator=${Elemento_Input_Login}  
  Input Text                       locator=${Elemento_Input_Login}      text=${Login_Usuario}  

   Wait Until Element Is Visible    locator=${Elemento_Input_Senha}
   Input Text                       locator=${Elemento_Input_Senha}    text=${SENHA}

   Wait Until Element Is Visible     locator=${Elemento_Button_Entrar} 
   Click Button                      locator=${Elemento_Button_Entrar} 

6.Verifica se o usuário esta logado 
  sleep   1
  Element Should Be Visible    locator=${Elemento_Messege_QACoders} 
   