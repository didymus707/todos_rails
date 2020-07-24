require 'rails_helper'

feature "User creates todo" do
  scenario 'successfully' do
    sign_in

    create_todo 'Trying out todo'

    expect(page).to display_todo 'Trying out todo'
  end
end