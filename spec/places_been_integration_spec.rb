require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('places been path', {:type => :feature}) do
  it('adds user entries to places list and displays list') do
    visit('/')
    fill_in('name_of_place', :with => "Your mother's house")
    click_button('Add Place')
    click_link('Back')
    expect(page).to have_content("Your mother's house")
  end
end
