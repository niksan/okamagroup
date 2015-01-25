class CreateGosts < ActiveRecord::Migration
  def change
    create_table :gosts do |t|
      t.string :file
      t.integer :gost_group_id

      t.timestamps
    end
  end
end
