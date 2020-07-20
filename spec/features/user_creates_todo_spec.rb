require 'rails_helper'

feature "User creates todo" do
  scenario 'successfully' do
    sign_in

    click_on 'New Todo'
    fill_in "Title", with: 'Trying out todo'
    click_on "Add Todo"

    expect(page).to have_css '.todos li', text: 'Trying out todo'
  end
end