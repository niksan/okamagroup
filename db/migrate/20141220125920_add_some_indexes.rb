class AddSomeIndexes < ActiveRecord::Migration
  def change
    add_index :pages, :slug
    add_index :pages, :public
    add_index :pages, :key
    add_index :frequently_asked_questions, :slug
    add_index :roles_users, [:role_id, :user_id]
  end
end
