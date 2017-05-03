
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('name', {:type => :feature}) do
  it('processes user entry, adds it to a list of words, and shows a confirmation msg') do
    visit('/words/new')
    fill_in("name", :with => "ocean")
    click_button('Add it!')
    expect(page).to have_content('Hooray!')
  end
end
