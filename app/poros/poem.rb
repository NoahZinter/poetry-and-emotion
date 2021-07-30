class Poem
  attr_reader  :author,
               :lines,
               :title,
               :tones

  def initialize(data)
    @author = data[:author]
    @lines = data[:lines]
    @tones = IBMToneService.tones(@lines.join)[:document_tone][:tones]
    @title = data[:title]
  end
end