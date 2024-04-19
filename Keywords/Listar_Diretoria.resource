*** Settings ***
Resource        ../uitils/Settings.resource
Resource        ../uitils/Navegador.resource
Resource        ../Variables/Acesso_URL_Login.resource
Resource        ../Variables/Elemento_Login.resource
Resource        ../Variables/Elemento_Cadastro_Diretorias.resource
Resource        ../Variables/Elemento_Atualização_Diretoria.resource
Resource        ../Variables/Elemento_Listar_Diretoria.resource



*** Keywords ***
5.Acessando login do usuário com sucesso 

  Element Should Be Visible       locator=${Elemento_Input_Login}  
  Input Text                       locator=${Elemento_Input_Login}      text=${Login_Usuario}  

   Wait Until Element Is Visible    locator=${Elemento_Input_Senha}
   Input Text                       locator=${Elemento_Input_Senha}    text=${SENHA}

   Wait Until Element Is Visible     locator=${Elemento_Button_Entrar} 
   Click Button                      locator=${Elemento_Button_Entrar} 

6.Verifica se o usuário esta logado com sucesso
  sleep   2
  Element Should Be Visible    locator=${Elemento_Messege_QACoders} 


 11.Listar todo o cadastro da diretoria 

  Element Should Be Visible    locator=${Elemento_Button_Cadastro} 
  Click Element                locator=${Elemento_Button_Cadastro} 

  Element Should Be Visible    locator=${Elemento_Button_Diretorias}
  Click Element                locator=${Elemento_Button_Diretorias}

   Sleep    5
  Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}
     
   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}
    
   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}

   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}

 12.Verificar se esta listando toda a diretoria
   Element Should Be Visible        locator=${Elemento_Todas_Diretorias}

   