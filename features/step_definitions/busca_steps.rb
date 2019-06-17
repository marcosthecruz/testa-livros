

Dado("que eu acesso a página principal {string}") do |pagina|
    visit 'https://www.submarino.com.br/'
end
  

Quando("entro no link do primeiro livro apresentado") do
    expect(page).to have_content 'Confira os livros mais vendidos'

    #find(:xpath, '//img[contains(@class, "ImageUI-tfgbp7-2")][1]').click
    find(:xpath, '//img[contains(@alt, "Box Livro - Para Todos os Garotos Que Já Amei")]').click
    sleep 2

end
 
Quando("Consulto qual é o {string} do livro") do |isbn|
    #@isbn = find('span[class="text__TextUI-sc-1hrwx40-0 hLVftz"]')
    #@ISBN = find(:xpath, '//span[contains(@class, "text__TextUI-sc-1hrwx40-0 hLVftz")]')
end

Então("verifico qual é o autor do livro") do
    #@autor = find(:xpath, '//a[contains(@class, "author-name__AuthorLink-sc-19niywj-0")]')
    #expect(@autor.text).to eql 'Jenny Han'
end
  
Quando("faço a busca do livro com o ISBN {string}") do |isbn|
    visit 'https://www.amazon.com.br/'
    find('#twotabsearchtextbox').set "855100204X"
    find(:xpath, '//input[contains(@tabindex, "20")]').click
    visit 'https://www.livrariacultura.com.br/'
    find('#Ntt-responsive').set "855100204X"
    find('#search-box-submit').click
    sleep 5
end