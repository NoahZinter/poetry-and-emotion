require 'rails_helper'

RSpec.describe PoemFacade do
  it 'makes 10 poems from searched name' do
    data = PoemFacade.search('emily')

    expect(data).is_a? Array
    data.each do |poem|
      expect(poem).is_a? Poem
      expect(poem.author).is_a? String
      expect(poem.title).is_a? String
      expect(poem.lines).is_a? Array
    end
  end
end