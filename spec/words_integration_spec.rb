
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the word definer page', {:type => :feature}) do
  it('give an option to add a new word') do
    visit('/')
    click_link('Add a New Word to Learn')
    expect(page).to have_content('Add a New Word')
  end
end

describe('name', {:type => :feature}) do
  it('processes user entry, adds it to a list of words, and shows a confirmation msg') do
    visit('/words/new')
    fill_in("name", :with => "ocean")
    click_button('Add it!')
    expect(page).to have_content('Hooray!')
  end
end
