class Practice < ApplicationRecord
  validates :basic_english_sentence, presence: true
  validates :answer, presence: true

  belongs_to :practice_part
  mount_uploader :image, ImageUploader
end
