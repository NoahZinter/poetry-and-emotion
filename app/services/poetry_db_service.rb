class PoetryDBService
  def self.author_search(author)
    url = "https://poetrydb.org/author/#{author}"
    res = Faraday.get(url)
    JSON.parse(res.body, symbolize_names: true)
  end
end