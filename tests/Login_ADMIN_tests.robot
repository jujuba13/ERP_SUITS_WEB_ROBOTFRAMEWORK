*** Settings ***
Resource         ../Keywords/Login_ADMIN.resource
Test Setup       Abrir o navegado
Test Teardown    Fechar o navegador 


*** Test Cases ***
cenario: Logar com Login_ADMIN
  1.Acessando o login com ADMIN
  2.Verificar se esta logado como ADMIN


