module Features
  def sign_in
    sign_in_as 'person@example.com'
  end

  def sign_in_as(email)
    visit root_path
    fill_in 'Email', with: email
    click_on 'Sign in'
  end

  def create_todo(todo_title)
    click_on 'New Todo'
    fill_in "Title", with: 'Trying out todo'
    click_on "Add Todo"
  end

  def display_todo(todo_title)
    have_css '.todos li', text: todo_title
  end

  def display_completed_todo(todo_title)
    have_css '.todos li.completed', text: todo_title
  end
end