require 'rails_helper'

feature 'User sees own todo' do
  scenario "doesn't see others todo" do
    Todo.create!(title: 'Tidy up', email: 'someone@example.com')

    sign_in_as 'someone_else@example.com'

    expect(page).not_to display_todo 'Tidy up'
  end
end