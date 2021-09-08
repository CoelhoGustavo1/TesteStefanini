#language: pt 

Funcionalidade: Cadastro
    EU COMO usuário do sistema
    DESEJO realizar o cadastro de novos usuários
    PARA QUE seja possível armazenar e gerenciar seus dados
    
    
    #Cenario: Pagina Inicial - TELA 01
        #Não implementado.

    Cenario:Nome não informado - TELA 02

        Dado que acesso a pagina de cadastro
        Quando submeto o cadastro com "" e "gustavo@stefanini.com" e "12345678"
        Então devo ver "O campo Nome é obrigatório."
    
    
    Cenario: E-mail não informado - TELA 03

        Dado que acesso a pagina de cadastro
        Quando submeto o cadastro com "Gustavo Coelho" e "" e "12345678"
        Então devo ver "O campo E-mail é obrigatório."

    
    Cenario: Senha não informada - TELA 04

        Dado que acesso a pagina de cadastro
        Quando submeto o cadastro com "Gustavo Coelho" e "gustavo@stefanini.com" e ""
        Então devo ver "O campo Senha é obrigatório."


    Cenario: Nenhum campo preenchido - TELA 05

        Dado que acesso a pagina de cadastro
        Quando submeto o cadastro com "" e "" e ""
        Então devo ver "O campo Nome é obrigatório."
        E devo ver "O campo E-mail é obrigatório." 
        E devo ver "O campo Senha é obrigatório."

    
    Cenario: Nome completo não informado  - TELA 06

        Dado que acesso a pagina de cadastro
        Quando submeto o cadastro com "Gustavo" e "gustavo@stefanini.com" e "12345678"
        Então devo ver "Por favor, insira um nome completo."
    
    
    Cenario: E-mail invalido informado - TELA 07

        Dado que acesso a pagina de cadastro
        Quando submeto o meu cadastro com "Gustavo Coelho" e "gustavostefanini.com" e "12345678"
        Então devo ver "Por favor, insira um e-mail válido."


    Cenario: Senha invalida informada - TELA 08

        Dado que acesso a pagina de cadastro
        Quando submeto o meu cadastro com "Gustavo Coelho" e "gustavostefanini.com" e "1234"
        Então devo ver "A senha deve conter ao menos 8 caracteres."


    Cenario: Usuario cadastrado com sucesso  - TELA 09

        Dado que acesso a pagina de cadastro
        Quando submeto o meu cadastro com "Gustavo Coelho" e "gustavo@stefanini.com" e "12345678"
        Então devo ver os usuarios ja cadastrados

    
     Cenario: Usuarios cadastrados com sucesso - TELA 10

        Dado que acesso a pagina de cadastro
        Quando submeto o meu cadastro com "Gustavo Coelho" e "gustavo@stefanini.com" e "12345678"
        Quando submeto o meu cadastro com "Coelho Gustavo" e "coelho@stefanini.com" e "12345678"
        Então devo ver os usuarios ja cadastrados

    #Cenario: Excluir um dos usuarios salvos - TELA 11
        #Não implementado.
    