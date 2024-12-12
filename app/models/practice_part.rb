class PracticePart < ApplicationRecord
  validates :number, presence: true
  validates :title, presence: true

  has_many :practice
end
