require 'rails_helper'

describe "User can visit root path" do
  it "to see a search form" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Welcome to Poetry and Emotion')
    expect(page).to have_selector('input')
  end

  it "travels to search page" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_field('author')
    expect(page).to have_button('Get Poems')

    fill_in 'author', with: 'emily'
    click_button 'Get Poems'

    expect(current_path).to eq '/search'
  end

  it 'lists poems' do
    visit '/'
    fill_in 'author', with: 'emily'
    click_button 'Get Poems'

    expect(current_path).to eq '/search'
    expect(page).to have_content('You searched for emily')
    expect(page).to have_content('Your Results')
    expect(page).to have_content('Emily Dickinson')
    expect(page).to have_content('Not at Home to Callers')
    expect(page).to have_content('Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --')

  end
end
