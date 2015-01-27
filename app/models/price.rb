class Price < ActiveRecord::Base

  validates :file, presence: true
  mount_uploader :file, DocumentUploader
  belongs_to :page
  scope :unassigned, -> { where(page_id: nil) }

  def filename
    file.path.split('/').last
  end

end
