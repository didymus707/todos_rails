require 'rails_helper'

feature 'User completes a todo' do
  scenario 'successfully' do
    sign_in 

    create_todo 'Trying out Todo'

    click_on 'Mark Complete'

    expect(page).to display_completed_todo 'Trying out todo'
  end
end