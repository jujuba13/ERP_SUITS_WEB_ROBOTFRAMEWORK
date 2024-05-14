*** Settings ***
Resource     ../uitils/Settings.resource
Resource     ../uitils/Navegador.resource
Resource     ../Variables/Acesso_URL_Login.resource
Resource     ../Variables/Elemento_Login.resource
Resource     ../Variables/Elemento_Cadastro_Diretorias.resource



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
  
7.Criar novo cadastro da Diretorias

   Element Should Be Visible    locator=${Elemento_Button_Cadastro}
    Click Element              locator=${Elemento_Button_Cadastro}

   Element Should Be Visible    locator=${Elemento_Button_Diretorias} 
   Click Element                 locator=${Elemento_Button_Diretorias} 

   Wait Until Element Is Visible       locator=${Elemeto_Button_NovoCadastroDiretorias} 
   Click Button                         locator=${Elemeto_Button_NovoCadastroDiretorias} 

    ${palavra_randomica_nome_diretorias}=    Generate Random String    length=10    chars=LETTERS
    ${palavra_randomica_nome_diretorias}=    Convert To Lower Case    ${palavra_randomica_nome_diretorias}
   Set Test Variable    ${NOME_DIRETORIA}    ${palavra_randomica_nome_diretorias}
   Log    ${NOME_DIRETORIA} 
   

   Wait Until Element Is Visible    locator=${Elemento_Input_NomeDiretoria} 
   Click Element                    locator=${Elemento_Input_NomeDiretoria}
   Input Text                       locator=${Elemento_Input_NomeDiretoria}        text=${NOME_DIRETORIA} 


    Element Should Be Visible    locator=${Elemento_Button_SalvarDiretorias} 
    Click Button    locator=${Elemento_Button_SalvarDiretorias} 

  #8.Verificar se o cadastro diretoria foi realizado com sucesso
   