class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || changes[:encrypted_password] }
  validates :email, presence: true, uniqueness: true
  validates :reset_password_token, uniqueness: true, allow_nil: true
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_practices, through: :bookmarks, source: :practice

  def bookmark(practice)
    bookmark_practices << practice
  end

  def unbookmark(practice)
    bookmark_practices.destroy(practice)
  end

  def bookmark?(practice)
    bookmark_practices.include?(practice)
  end
end
