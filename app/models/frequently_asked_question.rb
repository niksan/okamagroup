class FrequentlyAskedQuestion < ActiveRecord::Base

  validates :question, presence: true
  validates :answer, presence: true

end
