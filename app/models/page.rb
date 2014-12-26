class Page < ActiveRecord::Base

  validates :title, presence: true
  validates :key, uniqueness: true, allow_blank: true

  extend FriendlyId
  friendly_id :title, use: [:history, :finders]
  
  scope :with_key, -> { where.not(key: nil) }
  scope :published, -> { where(public: true) }

end
