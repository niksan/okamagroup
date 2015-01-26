class Gost < ActiveRecord::Base

  validates :file, presence: true
  belongs_to :gost_group
  mount_uploader :file, DocumentUploader

  def filename
    file.path.split('/').last.split('.')[0...-1].join
  end

end
