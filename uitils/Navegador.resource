*** Settings ***
Resource      ./Settings.resource
Resource     ../Variables/Acesso_URL_Login.resource

*** Keywords ***

Abrir o navegador do browser
   Open Browser  url=${URL}    browser=${BROWSER}

   Maximize Browser Window
   
Fechar o navegador do browser
   Close Browser