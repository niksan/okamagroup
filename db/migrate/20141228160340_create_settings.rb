class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.text :body
      t.string :key

      t.timestamps
    end
    add_index :settings, :key
  end
end
