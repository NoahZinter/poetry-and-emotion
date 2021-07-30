class Poem
  attr_reader  :author,
               :lines,
               :title

  def initialize(data)
    @author = data[:author]
    @lines = data[:lines]
    @title = data[:title]
  end
end