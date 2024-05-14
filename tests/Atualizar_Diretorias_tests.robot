*** Settings ***
Resource        ../Keywords/Login_Usuario.resource
Resource        ../Keywords/Atualizar_Diretoria.resource   
Test Setup        Abrir o navegador do browser
Test Teardown     Fechar o navegador do browser


*** Test Cases ***
cenario: Atualizção de cadastro da diretorias
   5.Acessando login do usuário com sucesso
   6.Verifica se o usuário esta logado com sucesso
   9.Preenchimento de dados atualizados
   10.Verificar se o cadastro da diretoria foi atualizado com sucesso





