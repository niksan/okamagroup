class GostGroup < ActiveRecord::Base
  
  validates :name, presence: true
  has_many :gosts, dependent: :destroy

end
