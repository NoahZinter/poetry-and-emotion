require 'rails_helper'

RSpec.describe PoetryDBService do
  it 'returns a json response' do
    res = PoetryDBService.author_search('emily')
    expect(res).is_a? Array
    expect(res[0]).is_a? Hash
    res.each do |hash|
      expect(hash[:title]).is_a? String
      expect(hash[:author]).is_a? String
      expect(hash[:lines]).is_a? Array
      expect(hash[:linecount]).is_a? Integer
    end
  end
end