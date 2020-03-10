
include Capybara::DSL

Dado("que eu acesso a página principal {string}") do |pagina|
  visit "/"
end

Quando("eu pesquiso por livros") do
  search = find("#h_search-input") # barra de pesquisa
  search.set("Livros")
  #find("#h_search-btn").click #Clica no botão pesquisar
  sleep 5
end

Quando("entro no link do primeiro livro apresentado") do
  find(".src-suggestion .as-lst .sz-1").click # Clica no primeiro livro apresentado
  sleep 5
end

Quando("Consulto qual é o {string} do livro") do |isbn|
  ficha_tec = find("#content")
  #puts ficha_tec
  #expect(find(ficha_tec.find("h2[class$='fqkQfk']", text: "Ficha técnica"))).visible?
  #puts isbn10
end

Então("verifico qual é o {string} do livro") do |autor|
  puts @livros_infos.autor
end

# Buscando Livro com mesmo ISBN em outra página:

Quando("faço a busca do livro com o ISBN {string}") do |isbn|
  isbn = CodigoIsbn.new
  visit "https://www.amazon.com.br/"
  find("#twotabsearchtextbox").set isbn.isbn10
  find(:xpath, '//input[contains(@tabindex, "20")]').click
  sleep 10

  visit "https://www.livrariacultura.com.br/"
  find(".fulltext-search-box").set "855100249X"
  find(".btn-buscar").click
  sleep 5
end

Então("verifico qual é o autor do livro") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Ultima vesão do documento 06/03/2020
