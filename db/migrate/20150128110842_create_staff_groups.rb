class CreateStaffGroups < ActiveRecord::Migration
  def change
    create_table :staff_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
