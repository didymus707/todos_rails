require 'rails_helper'

feature 'User completes a todo' do
  scenario 'successfully' do
    sign_in 

    click_on 'New Todo'
    fill_in "Title", with: 'Trying out todo'
    click_on "Add Todo"

    click_on 'Mark Complete'

    expect(page).to have_css '.todos li.completed', text: 'Trying out todo'
  end
end