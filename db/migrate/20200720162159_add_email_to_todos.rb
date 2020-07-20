class AddEmailToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :email, :string
  end
end
