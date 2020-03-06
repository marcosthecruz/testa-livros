
include Capybara::DSL

Dado("que eu acesso a página principal {string}") do |pagina|
  visit "/livros"
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
  ficha_tec.find("h2[class$='fqkQfk']", text: "Ficha técnica")
  @isbn = find("tr.Tr-sc-1wy23hs-3:nth-child(11) > td:nth-child(2) > span:nth-child(1)").text #Pega o isbn do livro
  #   if isbn.length == 10
  #   end
end

Então("verifico qual é o {string} do livro") do |autor|
  @autor = find(".author-name__AuthorLink-sc-19niywj-0").text
  sleep 5
end

Quando("faço a busca do livro com o ISBN {string}") do |isbn|
  visit "https://www.amazon.com.br/"
  find("#twotabsearchtextbox").set "855100249X"
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
