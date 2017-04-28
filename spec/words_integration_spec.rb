
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe('word', {:type => :feature}) do
  it('processes the user entry and add a word to the list of words') do
    visit('/')
    click_on('Add a New Word')
    expect(page).to have_content('Word to Learn:')
  end

  it('processes user entry and add it to a list of words') do
    visit('/words/new')
    fill_in('word', :with => "ocean")
    click_button('Add it!')
    expect(page).to have_content('ocean')
  end

  it('processes user entry and promts for a word definition') do
    visit('/words')
    click_on('ocean')
    expect(page).to have_content('Add a new definition')
  end

  it('processes user entry shows the definition(s) of the word') do
  visit('/words/1')
  click_button('ocean')
  expect(page).to have_content('lots of salty water')
  end
end
