class Livros
  include Capybara::DSL

  def autor
    find(".author-name__AuthorLink-sc-19niywj-0").text
  end

  def isbn
    find("tr.Tr-sc-1wy23hs-3:nth-child(11) > td:nth-child(2) > span:nth-child(1)").text #Pega o isbn do livro
  end
end
