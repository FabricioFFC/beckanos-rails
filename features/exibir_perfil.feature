#language: pt

Funcionalidade: Exibir perfil
    Para validar os meus dados
    Como um usuário
    Eu quero validar os meus dados

    Cenário: usuário cadastrado
        Dado que eu esteja logado como "admin" com a senha "teste123"
        Quando eu vou para home
        Então eu devo ver "O que está rolando na PRW Energia?"
        E eu devo ver "Felino"
        E eu devo ver "Casado, 12 anos"

