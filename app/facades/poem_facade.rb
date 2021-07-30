class PoemFacade
  def self.search(author)
    data = PoetryDBService.author_search(author)
    data[0..9].map do |data|
      Poem.new(data)
    end
  end
end