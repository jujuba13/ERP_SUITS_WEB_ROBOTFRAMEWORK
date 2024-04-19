*** Settings ***
Resource         ../Keywords/Login_Usuario.resource
Resource         ../Keywords/Listar_Diretoria.resource
Test Setup        Abrir o navegador do browser
Test Teardown     Fechar o navegador do browser


*** Test Cases ***
cenario: Listar toda diretoria
   5.Acessando login do usuário com sucesso
   6.Verifica se o usuário esta logado com sucesso
   11.Listar todo o cadastro da diretoria 
   12.Verificar se esta listando toda a diretoria