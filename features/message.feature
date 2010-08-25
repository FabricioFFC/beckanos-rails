#language: pt

Funcionalidade: Visualizar mensagens
    Para visualizar as ideias compartilhadas
    Como um usuário
    Eu quero visualizar as mensagens
    
    Cenário: Visualizar mensagens quando não há mensagens
        Dado que eu esteja logado como "admin" com a senha "teste123"
        E não há mensagens
        Quando eu vou para home
        Então eu devo ver "Não há mensagens."
    Cenário: Visualizar mensagens quando há mensagens
        Dado que eu esteja logado como "admin" com a senha "teste123"
        E há mensagens
        Quando eu vou para home
        Então eu devo ver "blá blá blá 1"
        E eu devo ver "blá blá blá 2"
