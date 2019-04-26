class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  mount_uploader :picture, PictureUploader
  default_scope ->{order(created_at: :desc)}
end
