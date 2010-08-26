#language: pt

Funcionalidade: Descordar e concordar
    Para poder expressar minha opinião sobre as mensagens
    Como um usuário
    Eu quero opinar nas mensagens
    
    Cenário: Concordar com mensagem
        Dado que eu esteja logado como "admin" com a senha "teste123"
        E há uma mensagem
        Quando eu vou para home        
        E eu clico "Concordar"
        Então eu devo ver "Sua opinião foi salva."
    Cenário: Descordar com mensagem
        Dado que eu esteja logado como "admin" com a senha "teste123"
        E há uma mensagem
        E eu já opinei nessa mensagem
        Quando eu vou para home
        E eu clico "Descordar"
        Então eu devo ver "Você já opinou nessa mensagem."
