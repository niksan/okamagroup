class Price < ActiveRecord::Base

  validates :file, presence: true
  mount_uploader :file, PriceUploader

  def filename
    file.path.split('/').last
  end

end
