require('capybara/rspec')
require('pry')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("The path to the anagrams page", {:type => :feature}) do
  it("Presents with two text prompts and a submit button which will take the user to a page containing any matching anagrams from the two text prompts.") do
    visit("/")
    fill_in("master_word", :with => "fox")
    fill_in("words_to_compare", :with => "xof car ofx")
    click_button("submit")
    expect(page).to(have_content('xof ofx'))
  end
end
