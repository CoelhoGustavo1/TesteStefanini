#language: pt 

Funcionalidade: Cadastro
    EU COMO usuário do sistema
    DESEJO realizar o cadastro de novos usuários
    PARA QUE seja possível armazenar e gerenciar seus dados
    
    Contexto: Formulario
        Dado que acesso a pagina de cadastro
        
         Cenario: Nenhum campo preenchido 

        Quando submeto o cadastro com "" e "" e ""
        Então devo ver "O campo Nome é obrigatório."
        E devo ver "O campo E-mail é obrigatório." 
        E devo ver "O campo Senha é obrigatório."

        Cenario: Usuario cadastrado com sucesso  

        Quando submeto o meu cadastro com "Gustavo Coelho" e "gustavo@stefanini.com" e "12345678"
        Então devo ver os usuarios ja cadastrados

    
     Cenario: Usuarios cadastrados com sucesso 

        Quando submeto o meu cadastro com "Gustavo Coelho" e "gustavo@stefanini.com" e "12345678"
        Quando submeto o meu cadastro com "Coelho Gustavo" e "coelho@stefanini.com" e "12345678"
        Então devo ver os usuarios ja cadastrados

    Esquema do Cenario: Campos de Login
        
        Quando submeto o cadastro com "<nome>" e "<email>" e "<senha>"
        Então devo ver "<mensagem>"
    
        Exemplos:
        | nome               | email                    | senha     | mensagem                                   |
        |                    | gustavo@stefanini.com    | 12345678  | O campo Nome é obrigatório.                |
        | Gustavo Coelho     |                          | 12345678  | O campo E-mail é obrigatório.              |
        | Gustavo Coelho     | gustavo@stefanini.com    |           | O campo Senha é obrigatório.               |
        | Gustavo            | gustavo@stefanini.com    | 12345678  | Por favor, insira um nome completo.        |
        | Gustavo Coelho     | gustavostefanini.com     | 12345678  | Por favor, insira um e-mail válido.        |
        | Gustavo Coelho     | gustavo@stefanini.com    | 1234      | A senha deve conter ao menos 8 caracteres. |
    
        #Cenario: Pagina Inicial 
        #Não implementado.
        
        #Cenario: Excluir um dos usuarios salvos 
        #Não implementado.