class AddStaffGroupIdToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :staff_group_id, :integer
    add_index :staffs, :staff_group_id
  end
end
