class AddPublicAndKeyToPages < ActiveRecord::Migration
  def change
    add_column :pages, :public, :boolean, default: false
    add_column :pages, :key, :string
  end
end
