class RemoveDescriptionFromPrices < ActiveRecord::Migration
  def up
    remove_column :prices, :description
  end

  def down
    add_column :prices, :description, :text
  end
end
