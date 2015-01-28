class StaffGroup < ActiveRecord::Base

  validates :name, presence: true
  has_many :staffs, dependent: :destroy

end
