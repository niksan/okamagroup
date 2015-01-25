class Price < ActiveRecord::Base

  validates :file, presence: true
  mount_uploader :file, DocumentUploader

  def filename
    file.path.split('/').last.split('.')[0..-1].join
  end

end
