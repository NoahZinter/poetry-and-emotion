require 'rails_helper'

RSpec.describe IBMToneService do
  it 'analyzes tones' do
    text = 'Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --'
    data = IBMToneService.tones(text)

    expect(data[:document_tone][:tones]).is_a? Array
    data[:document_tone][:tones].each do |tone|
      expect(tone[:tone_name]).is_a? String
    end
  end
end