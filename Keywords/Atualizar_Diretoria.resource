*** Settings ***
Resource      ../uitils/Settings.resource
Resource      ../Variables/Acesso_URL_Login.resource
Resource       ../uitils/Navegador.resource
Resource       ../Variables/Elemento_Cadastro_Diretorias.resource
Resource      ../Variables/Elemento_Atualização_Diretoria.resource
Resource       ../Variables/Elemento_Login.resource

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



 9.Preenchimento de dados atualizados
   
  Element Should Be Visible    locator=${Elemento_Button_Cadastro} 
  Click Element                locator=${Elemento_Button_Cadastro} 

  Element Should Be Visible     locator=${Elemento_Button_Diretorias} 
  Click Element                 locator=${Elemento_Button_Diretorias} 
     Sleep    5s

   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}
     
   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}
    
   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}

   Element Should Be Visible         locator=${Elemento_Button_MudancaDeListagem}
   Double Click Element              locator=${Elemento_Button_MudancaDeListagem}
    
   Wait Until Element Is Visible      locator=${Elemento_Validacao} 
      
    
   Element Should Be Visible    locator=${Elemento_Button_EditarDiretorias}
   Click Element                locator=${Elemento_Button_EditarDiretorias}


    Sleep    10s
   ${palavra_randomica_nome_diretorias}=    Generate Random String    length=10    chars=LETTERS
   ${palavra_randomica_nome_diretorias}=    Convert To Lower Case    ${palavra_randomica_nome_diretorias}
   Set Test Variable    ${ATUALIZAR_NOME_DIRETORIA}    ${palavra_randomica_nome_diretorias}
    Log    ${ATUALIZAR_NOME_DIRETORIA} 
    
      
    Wait Until Element Is Visible    locator=${Elemento_Input_AtualizacaoDiretoria}  
     Click Element                locator=${Elemento_Input_AtualizacaoDiretoria}  
     Input Text                   locator=${Elemento_Input_AtualizacaoDiretoria}        text= ${ATUALIZAR_NOME_DIRETORIA} 
       

    Element Should Be Visible    locator=${Elemento_Button_SalvarDiretorias} 
    Click Button                 locator=${Elemento_Button_SalvarDiretorias} 
      
    
   #   Sleep    5s
  
 10.Verificar se o cadastro da diretoria foi atualizado com sucesso

  Element Should Be Visible    locator=${Elemento_Validacao}  



