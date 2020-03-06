#language:pt

Funcionalidade: Testando Livros
    Para que eu possa buscar o primeioro livro apresentado de uma loja
    Sendo um usuário
    Posso acessar a loja usando o link 
    Checando qual é o autor do livro.

   
    Cenário: Consulta de livro realizada com sucesso

        Dado que eu acesso a página principal "https://www.submarino.com.br/"
        Quando eu pesquiso por livros
        E entro no link do primeiro livro apresentado
        E Consulto qual é o 'ISBN' do livro
        Então verifico qual é o 'autor' do livro

    @temp
    Cenário: Buscando mesmo livro em outra loja via ISBN
        
        Dado que eu acesso a página principal "https://www.amazon.com.br/"
        Quando faço a busca do livro com o ISBN 'ISBN'
        Então verifico qual é o autor do livro
        #Fazer comparação de autores

