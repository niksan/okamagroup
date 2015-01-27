class AddPageIdToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :page_id, :integer
    add_index :prices, :page_id
  end
end
