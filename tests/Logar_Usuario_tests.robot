*** Settings ***
Resource         ../Keywords/Login_Usuario.resource

Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador 


*** Test Cases ***
cenario: Logar como usuário
   5.Acessando login do usuário
   6.Verifica se o usuário esta logado 






