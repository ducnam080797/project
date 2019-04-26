class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  mount_uploader :picture, PictureUploader
  has_many :friendships, foreign_key: :sender_id,   class_name: "Friendship"
  has_many :friendships, foreign_key: :receiver_id, class_name: "Friendship"
  before_save{self.email = email.downcase}
  validates :name, presence: true, length: {maximum: Settings.maximum_name}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: Settings.maximum_email},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
end
