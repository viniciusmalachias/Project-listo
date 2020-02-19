#language:pt
#encode: UTF-8

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    @1 
    Cenário: Fazer login com sucesso

        Dado que eu acesso a pagina do listo
        Quando faço login com 'Admin@verity.com.br' e '123456'
        Então devo ser autenticado com sucesso

    @2
    Cenário: Validar mensagem de erro quando a senha não for digitada.
        
        Dado que eu acesso a pagina do listo
        Quando faço login com 'Admin@verity.com.br'
        Então devo ver "O campo senha é obrigatório."

    @3
    Cenário: Login com senha errada
        
        Dado que eu acesso a pagina do listo
        Quando faço o login com 'Admin@verity.com.br' e '12345'
        Então devo ver a seguinte mensagem "Senha incorreta."
   

    @4
    Cenário: Email não encontrado

        Dado que eu acesso a pagina do listo
        Quando faço login com 'agente01@csf.com' e '123456'
        Então devo ver a mensagem 'Email não encontrado'

    @5
    Cenário: Realizar Log-out.

        Dado que eu acesso a pagina do listo
        Quando faço login com 'Admin@verity.com.br' e '123456'
        E clico em sair
        Então realizo o log out    
    
    @6
    Cenário: 