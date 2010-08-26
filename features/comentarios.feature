#language: pt

Funcionalidade: comentario
    Para expressar opiniao sobre as mensagens
    Como um usuario
    Eu quero comentar

    Cenário: criar comentario
        Dado que eu esteja logado como "admin" com a senha "teste123"
        E há uma mensagem
        Quando eu vou para home 
        E eu clico "Comentar"       
        E eu preencho "Comentário" com "bla bla bla"
        E eu aperto "Salvar"
        Então eu devo ver "Comentario salvo"
        
    Cenário: visualizar comentario
        Dado que eu esteja logado como "admin" com a senha "teste123"
        E há uma mensagem
        Quando eu vou para home 
        E há um comentário "bla bla bla"
        E eu clico "Comentar"       
        Então eu devo ver "bla bla bla"
