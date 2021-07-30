require 'rails_helper'

RSpec.describe Poem do
  it 'exists' do
    data = PoetryDBService.author_search('emily')
    data = data[0]
    poem = Poem.new(data)

    expect(poem).is_a? Poem
    expect(poem.author).to eq "Emily Dickinson"
    expect(poem.title).to eq "Not at Home to Callers"
    expect(poem.lines).to eq(["Not at Home to Callers", "Says the Naked Tree --", "Bonnet due in April --", "Wishing you Good Day --"])
    expect(poem.tones).to eq([{:score=>0.773473, :tone_id=>"joy", :tone_name=>"Joy"}])
  end
end