*** Settings ***
Resource   ../uitils/Settings.resource
Resource   ../Variables/Acesso_URL_Login.resource
Resource   ../Variables/Elemento_Login.resource


*** Keywords ***

Abrir o navegado
   Open Browser  url=${URL}    browser=${BROWSER}

   Maximize Browser Window
   
Fechar o navegador 
   Close Browser
 1.Acessando o login com ADMIN
   
  Element Should Be Visible       locator=${Elemento_Input_Login}
  Input Text                       locator=${Elemento_Input_Login}     text=${LOGIN} 

   Wait Until Element Is Visible    locator=${Elemento_Input_Senha}
   Input Text                       locator=${Elemento_Input_Senha}    text=${SENHA}

   Wait Until Element Is Visible     locator=${Elemento_Button_Entrar} 
   Click Button                      locator=${Elemento_Button_Entrar} 


 2.Verificar se esta logado como ADMIN
  Sleep   2
  Element Should Be Visible    locator=${Elemento_Messege_QACoders} 
  Element Should Be Visible    locator=${Elemento_Button_Logout}  
  Click Button                 locator=${Elemento_Button_Logout} 



