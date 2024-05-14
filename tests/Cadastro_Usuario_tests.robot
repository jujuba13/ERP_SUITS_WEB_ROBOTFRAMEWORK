*** Settings ***
Resource         ../Keywords/Login_ADMIN.resource
Resource         ../Keywords/Cadastro_Usuário.resource
Test Setup       Abrir o navegado do browser
Test Teardown    Fechar o navegador do browser


*** Test Cases ***


cenario: Cadastro de usuário
   1.Acessar o login com ADMIN 
   2.Verificar se esta logado como ADMIN com sucesso
   3.Novo usuário com sucesso
   #4.Verificar se o cadastro foi realizado com sucesso





