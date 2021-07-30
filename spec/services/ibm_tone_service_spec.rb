require 'rails_helper'

RSpec.describe IBMToneService do
  it 'analyzes tones' do
    text = 'Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --'
    data = IBMToneService.tones(text)
    binding.pry
  end
end