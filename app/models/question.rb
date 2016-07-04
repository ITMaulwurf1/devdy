class Question < ApplicationRecord
  validates :subject, presence: true
  has_many :answers, dependent: :destroy
end
