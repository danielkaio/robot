*** Settings ***

Resource    ../main.robot

*** Variables ***

@{campos}
...    id:form-nome
...     id:form-cargo
...    id:form-imagem
...      class:lista-suspensa
...    id:form-botao 
...    //option[contains(.,'Programação')]
...     //option[contains(.,'Front-End')]
...         //option[contains(.,'Data Science')]
...        //option[contains(.,'Devops')]
...            //option[contains(.,'UX e Design')]
...          //option[contains(.,'Mobile')]
...        //option[contains(.,'Inovação')]


*** Keywords ***



Dado que eu preencha os campos do formulário
     ${nome}  FakerLibrary.First Name
    Input Text       id:form-nome       ${nome}
    ${cargo}  FakerLibrary.Job
    Input Text       id:form-cargo      ${cargo} 
    ${img}     FakerLibrary.Image Url
    Input Text       id:form-imagem     ${img}
    Click Element    class:lista-suspensa
    Click Element    //option[contains(.,'Programação')]

    
E clique no botão "Criar Card"    
    Click Element    id:form-botao

Então identificar o card no time esperado
    Element Should Be Visible    class:colaborador


Então criar card e identificar 1 card em cada time disponível
    Então criar card e identificar 1 card em cada time disponível
    FOR    ${i}    IN RANGE    1    3
             Dado que eu preencha os campos do formulário
                 e clique no botão "Criar Card"


                
    END
    




   
 

   


