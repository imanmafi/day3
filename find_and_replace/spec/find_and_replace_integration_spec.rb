require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('replaces selected word with new word') do
    visit('/')
    fill_in('sentence', :with => 'I love carrots')
    fill_in('look_for', :with => 'carrots')
    fill_in('replace_with', :with => 'celery')
    click_button('Send')
    expect(page).to have_content('I love celery')
  end
end
