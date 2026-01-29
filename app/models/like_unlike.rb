class LikeUnlike < ApplicationRecord
  belongs_to :posts, class_name: "Post"
  belongs_to :users, class_name: "User"
end
