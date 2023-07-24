*** Settings ***
  
Resource         ../resources/main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador


*** Variables ***
${BOTAO_CARD}      id:form-botao


*** Test Cases ***

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time escolhido  
     Dado que eu preencha os campos do formulário
     E clique no botão "Criar Card"
     Então identificar o card no time esperado



*** Variables ***


*** Test Cases ***
Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time escolhido  
     Dado que eu preencha os campos do formulário
     E clique no botão "Criar Card"
     Então identificar o card no time esperado

*** Test Cases ***

Verificar se é possivel criar mais de um card

    Dado que eu preencha os campos do formulário
    E clique no botão "Criar Card"
    

    
   








 

 
    

    
  


  
  
  
    


   


    
   





 
