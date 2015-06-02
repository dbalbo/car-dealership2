require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the places app route', {:type => :feature}) do
  it('returns a list of places the user inputs') do
  visit('/')
  fill_in('New Place', :with => "Congrats!")
  click_button('Submit')
  expect(page).to have_content("Congrats!")
  end
end
