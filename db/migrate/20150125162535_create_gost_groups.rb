class CreateGostGroups < ActiveRecord::Migration
  def change
    create_table :gost_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
