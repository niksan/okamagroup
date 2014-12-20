class Price < ActiveRecord::Base

  validates :name, presence: true
  validates :file, presence: true
  mount_uploader :file, PriceUploader

end
