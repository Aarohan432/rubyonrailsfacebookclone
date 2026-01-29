class Post < ApplicationRecord
  has_one_attached :image
  has_many :like_unlikes, class_name: "LikeUnlike"
  has_many :comments, class_name: "Comment"
  validates :title, presence: true
  # has_one_attached :image
  # has_one_attached :avatar
  # has_one_attached :image
  # has_one_attached :image
  # has_one_attached :avatar

  # has_one_attached :image
  # has_many_attached :pictures
  # has_rich_text :body
  # rails generate model User avatar:attachment
end
