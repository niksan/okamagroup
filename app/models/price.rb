class Price < ActiveRecord::Base

  validates :name, presence: true
  validates :file, presence: true
  mount_uploader :file, PriceUploader

  def filename
    file.path.split('/').last.split('.').first
  end

end
