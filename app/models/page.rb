class Page < ActiveRecord::Base

  validates :title, presence: true

  extend FriendlyId
  friendly_id :title, use: [:history, :finders]

end
