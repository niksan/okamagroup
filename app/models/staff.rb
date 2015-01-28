class Staff < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :staff_group_id, presence: true

  belongs_to :staff_group

end
