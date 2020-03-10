require "base64"

Before do
  @livros_infos = Livros.new
end

class CodigoIsbn
  include Capybara::DSL

  def author
    @autor = find(".author-name__AuthorLink-sc-19niywj-0").text
  end

  def isbn10
    #ficha_tec = find("#content")
    #ficha_tec.find("h2[class$='fqkQfk']", text: "Ficha técnica")
    find("tr.Tr-sc-1wy23hs-3:nth-child(11) > td:nth-child(2) > span:nth-child(1)").text #Pega o isbn do livro
  end
end
