class FrequentlyAskedQuestion < ActiveRecord::Base

  validates :title, presence: true
  validates :question, presence: true
  validates :answer, presence: true

  extend FriendlyId
  friendly_id :title, use: [:history, :finders]

end
