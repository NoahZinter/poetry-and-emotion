class PoemFacade
  def self.search(author)
    data = PoetryDBService.author_search(author)
    if data.length >= 10
      data[0..9].map do |data|
        Poem.new(data)
      end
    else
      data.map do |data|
        Poem.new(data)
      end
    end
  end
end