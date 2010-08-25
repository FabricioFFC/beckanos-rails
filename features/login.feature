#language: pt

Funcionalidade: Login
    Para garantir a segurança
    Como um colaborador
    Eu quero efetuar login

    Cenário: Sucesso
        Dado que não estou logado
        E que eu esteja na página de login
        Quando eu preencho "Usuário" com "admin"
        E eu preencho "Senha" com "teste123"
        E eu aperto "Login"
        Então eu devo ver "O que está rolando na PRW Energia?"

